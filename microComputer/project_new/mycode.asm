DATA SEGMENT
DATA ENDS 
STACK   SEGMENT STACK
    STA     DW 50 DUP(?)
STACK   ENDS
CODE SEGMENT 
   ASSUME CS:CODE,DS: DATA ,SS:STACK
   START: MOV AL, 36H        ; ������0��ʼ��,16λ,��ʽ3,������
          MOV DX, 11100110B      ; 8253���Ƶ�ַ�˿�
          OUT DX, AL
          MOV AX, 1000
          MOV DX, 11100000B
          OUT DX, AL         ; ���������ֽ�
          MOV AL, AH
          OUT DX, AL         ; ���������ֽ�     
          
          MOV AL, 76H       ; ������1��ʼ��,16λ,��ʽ3,������
          MOV DX, 11100110B
          OUT DX, AL
          MOV AX, 1000
          MOV DX, 11100010B
          OUT DX, AL         ; ���������ֽ�
          MOV AL, AH
          OUT DX, AL         ; ���������ֽ� 

          
          MOV AL, 13H  ; 00010011B��ICW1�����ش�������Ƭ��ҪICW4
          MOV DX, 11111100B ; 8259��ַ
          OUT DX, AL
          MOV AL, 8  ;    ICW2�ж����ͺ�Ϊ8
          MOV DX, 11111110B
          OUT DX, AL
          MOV AL, 01H  ;   ICW4���û��巽ʽ�������жϽ������������
                                            ;ȫǶ�׷�ʽ
          OUT DX, AL
          MOV AX, 0             ; ����
          MOV DS, AX           ; ���ݶ�����        
          LEA AX, INT0         ; д8259�жϳ������ڵ�ַ
          MOV DS: [4*8],AX  ; ���жϷ���������ڵ�ַƫ�������ж�������
          MOV AX, CS
          MOV DS:[4*8+2], AX ; ���жϷ���������ڵ�ַ�ε�ַ���ж�������
          IN  AL, DX                  ;���ж����μĴ���IMR��
          AND AL, 0FEH    ; ����IR1~IR7,����IR0�е��ж�����          
          OUT DX, AL
          
          MOV DX, 11110110B      ; 8255��ʼ��
          MOV AL, 82H       ; A�������B�����룬C���������ʽ0
          OUT DX, AL
          MOV BL, 0FEH     ; LED0����(�͵�ƽ����)  
          MOV AL, BL
          MOV DX, 11110000B
          OUT DX, AL         ;PA0���� 
          MOV DX, 11110100B 
          MOV AL, 7FH
          OUT DX, AL
          STI                       ;���ж�
          ;REPEAT: HLT 
          ;      JMP REPEAT     ;�ȴ�
    INTR: MOV DX, 0FFF8H
          MOV AL, 8
          OUT DX, AL
          JMP INTR
    INT0  PROC NEAR     ;8259�жϷ������   
          ROL BL, 1        ;��ѭ��1��
          MOV AL, BL
          MOV DX, 11110000B   ; PA�ڵ���
          OUT DX, AL 
          MOV DX, 11110010B
          IN  AL, DX
          MOV DX, 11110100B
          OUT DX, AL
          MOV DX, 11111100B
          MOV AL, 20H     ; OCW2����������EOI=1
          OUT DX, AL
          IRET
    INT0 ENDP
   CODE ENDS 
       END START
