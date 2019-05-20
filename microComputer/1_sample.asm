DATAS SEGMENT
    A DW 16 DUP(?) 
    B DW 4 DUP(?)
    N DB 10    
DATAS ENDS


CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
        MOV AX,DATAS
        MOV DS,AX          ;初始化
        MOV SI, 0
        MOV CX, 16
        MOV BL, 0
SET:    MOV AL, BL
        MUL BL
        MOV A[SI], AX
        INC BL
        INC SI
        LOOP SET
    
        MOV CX,3
        ;MOV SI, OFFSET A
L:      MOV AX, 0  
INPUT:  MUL N
        MOV BX, AX
        MOV AH,01H
        INT 21H            ;输入字符，存放在AL中
        CMP AL, 0DH        ;判断是否为回车
        JZ NEXT
        MOV AH, 0
        SUB AL, 30H        ;字符串转数字
        ADD AX, BX
        JMP INPUT
        
         
NEXT:   MOV DL, 0DH
        MOV AH, 02H
        INT 21H 
        MOV AH, 02H
        MOV DL, 0AH
        INT 21H
        MOV AX, BX
        DIV N
        MOV BL, AL
        MOV BH, 0     
        MOV AL, BYTE PTR A[BX]
        MOV BL, 10
        MOV DI, 0
OUTPUT: MOV AH, 0
        MOV DX, 0
        DIV BL
        MOV DL, AH
        ADD DL, 30H         ;数字转字符串   
        MOV B[DI], DX
        INC DI  
        OR AL, 0
        JNZ OUTPUT
OUTPUT1:DEC DI
        MOV DL, BYTE PTR B[DI]
        MOV AH, 02H
        INT 21H
        OR DI, 0
        JNZ OUTPUT1
        
        MOV DL, 0DH
        MOV AH, 02H
        INT 21H 
        MOV AH, 02H
        MOV DL, 0AH
        INT 21H  
        
        INC SI
        LOOP L
    
        MOV AH,4CH
        INT 21H
CODES ENDS
    END START