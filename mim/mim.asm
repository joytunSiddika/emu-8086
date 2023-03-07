.MODEL
.STACK 100H
.DATA
;THE VARIABLE WHICH ARE DECLERD   
      MSG DB "PRINT THIS NUMBER WITH NEW LINE $"
    NUM1 DB 49
    NUM2 DB 50
    NUM3  DB 52
.CODE  

;CODE AEGMENT
MAIN PROC ;INT MAIN
    ;CODE STATEMENT
   
        MOV AX ,@DATA
        MOV DS,AX 
        MOV AH ,9
        LEA DX ,MSG
        INT 21H 
         ;NEW LINE
         
          MOV AH,2 
          MOV DL, 0AH
          INT 21H
          MOV DL,0DH  
          INT 21H
        
            ;PRINT 1
        
        MOV AH,2
        MOV DL,NUM1
        INT 21H 
        
         ;NEW LINE
         
          MOV AH,2 
          MOV DL, 0AH
          INT 21H
          MOV DL,0DH  
          INT 21H
         
         
            ;PRINT2
        
        MOV DL,NUM2
        INT 21H 
        
             ;NEW LINE
         
          MOV AH,2 
          MOV DL, 0AH
          INT 21H
          MOV DL,0DH  
          INT 21H
         
           ;PRINT 4
        MOV DL,NUM3
        INT 21H 
         ;NEW LINE
         
          MOV AH,2 
          MOV DL, 0AH
          INT 21H
          MOV DL,0DH  
          INT 21H
         
   
    MOV AH ,4CH
    INT 21H
    MAIN ENDP
END MAIN