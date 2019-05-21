DATAS SEGMENT
    SCORE DW 8 DUP(75, 60, 70, 80, 90) 
    NINETY DB 0
    EIGHTY DB 0
    SEVENTY DB 0
    SIXTY DB 0
    FAILED DB 0 
    STR DW 4 DUP(?)
    N DB 10   
DATAS ENDS


CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
        MOV AX,DATAS
        MOV DS,AX          ;≥ı ºªØ
        
        MOV SI, 0
        MOV CX, 40
CHECK:  MOV AX, SCORE[SI]
        INC SI
        INC SI
        CMP AX, 90
        JNB OPER90
        CMP AX, 80
        JNB OPER80
        CMP AX, 70
        JNB OPER70
        CMP AX, 60
        JNB OPER60
        INC FAILED
        JMP NEXT
        
        
OPER90: INC NINETY
        JMP NEXT
OPER80: INC EIGHTY
        JMP NEXT        
OPER70: INC SEVENTY
        JMP NEXT
OPER60: INC SIXTY
        JMP NEXT 

BREAKL: MOV DL, 0DH
        MOV AH, 02H
        INT 21H 
        MOV AH, 02H
        MOV DL, 0AH
        INT 21H
        RET

SHOW:   MOV AL, DL
        MOV DI, 0
TOSTR:  MOV AH, 0
        MOV DX, 0
        DIV N
        MOV DL, AH
        ADD DL, 30H
        MOV STR[DI], DX
        INC DI
        OR AL, 0
        JNZ TOSTR
OUTPUT: DEC DI
        MOV DL, BYTE PTR STR[DI]
        MOV AH, 02H
        INT 21H
        OR DI, 0
        JNZ OUTPUT
        RET

                
NEXT:   LOOP CHECK
        
        MOV DL, NINETY
        CALL SHOW 
        CALL BREAKL
        
        MOV DL, EIGHTY
        CALL SHOW
        CALL BREAKL
        
        MOV DL, SEVENTY
        CALL SHOW
        CALL BREAKL
        
        MOV DL, SIXTY
        CALL SHOW
        CALL BREAKL
        
        MOV DL, FAILED
        CALL SHOW
        CALL BREAKL

CODES ENDS
    END START