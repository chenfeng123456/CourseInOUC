DATA SEGMENT
DATA ENDS 
STACK   SEGMENT STACK
    STA     DW 50 DUP(?)
STACK   ENDS
CODE SEGMENT 
   ASSUME CS:CODE,DS: DATA ,SS:STACK
   START: MOV AL, 36H        ; 计数器0初始化,16位,方式3,二进制
          MOV DX, 11100110B      ; 8253控制地址端口
          OUT DX, AL
          MOV AX, 1000
          MOV DX, 11100000B
          OUT DX, AL         ; 计数器低字节
          MOV AL, AH
          OUT DX, AL         ; 计数器高字节     
          
          MOV AL, 76H       ; 计数器1初始化,16位,方式3,二进制
          MOV DX, 11100110B
          OUT DX, AL
          MOV AX, 1000
          MOV DX, 11100010B
          OUT DX, AL         ; 计数器低字节
          MOV AL, AH
          OUT DX, AL         ; 计数器高字节 

          
          MOV AL, 13H  ; 00010011B，ICW1：边沿触发，单片，要ICW4
          MOV DX, 11111100B ; 8259地址
          OUT DX, AL
          MOV AL, 8  ;    ICW2中断类型号为8
          MOV DX, 11111110B
          OUT DX, AL
          MOV AL, 01H  ;   ICW4不用缓冲方式，正常中断结束，非特殊的
                                            ;全嵌套方式
          OUT DX, AL
          MOV AX, 0             ; 清零
          MOV DS, AX           ; 数据段清零        
          LEA AX, INT0         ; 写8259中断程序的入口地址
          MOV DS: [4*8],AX  ; 把中断服务程序的入口地址偏移量送中断向量表
          MOV AX, CS
          MOV DS:[4*8+2], AX ; 把中断服务程序的入口地址段地址送中断向量表
          IN  AL, DX                  ;读中断屏蔽寄存器IMR，
          AND AL, 0FEH    ; 屏蔽IR1~IR7,允许IR0中的中断请求          
          OUT DX, AL
          
          MOV DX, 11110110B      ; 8255初始化
          MOV AL, 82H       ; A口输出，B口输入，C口输出，方式0
          OUT DX, AL
          MOV BL, 0FEH     ; LED0灯亮(低电平灯亮)  
          MOV AL, BL
          MOV DX, 11110000B
          OUT DX, AL         ;PA0灯亮 
          MOV DX, 11110100B 
          MOV AL, 7FH
          OUT DX, AL
          STI                       ;开中断
          ;REPEAT: HLT 
          ;      JMP REPEAT     ;等待
    INTR: MOV DX, 0FFF8H
          MOV AL, 8
          OUT DX, AL
          JMP INTR
    INT0  PROC NEAR     ;8259中断服务程序   
          ROL BL, 1        ;左循环1次
          MOV AL, BL
          MOV DX, 11110000B   ; PA口灯亮
          OUT DX, AL 
          MOV DX, 11110010B
          IN  AL, DX
          MOV DX, 11110100B
          OUT DX, AL
          MOV DX, 11111100B
          MOV AL, 20H     ; OCW2发结束命令EOI=1
          OUT DX, AL
          IRET
    INT0 ENDP
   CODE ENDS 
       END START
