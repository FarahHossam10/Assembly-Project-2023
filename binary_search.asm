.MODEL SMALL                          
.DATA                                  
    arr DW 0, 1, 2, 3 
        DW 4, 5, 6
        DW 7, 8, 9
        
    len DW ($-arr)/2                   ; length of arr                   
    key DW 1                           ; element we're searching for 
    
    msg1 DB "key is found at "         
    res  DB "  position ", 10, 13, "$"  
    msg2 DB 'key is not found!' ,'$'    

.CODE                    
   MAIN PROC FAR
   .STARTUP
   MOV BX, 0                           ; lowerbound in BX      
   MOV DX, len                         ; upperbound in DX      
   MOV CX, key                         ; key in CX     

   comp:              
        CMP BX, DX         
        JA notFound                    ; if BX is bigger than DX then element is not found
        
        MOV AX, BX        
        ADD AX, DX       
        SHR AX, 1                      ; we add DX to BX and divide by 2 to find middle point     
        MOV SI, AX       
        ADD SI, SI       
        CMP CX, arr[SI]                ; compare key to middle element  
        JAE big
        
        DEC AX                         ; if key is smaller, decrement upperbound
        MOV DX, AX       
        JMP comp        

   big:                
        JE found                       ; if equal then element is found 
        INC AX                         ; if key is bigger, increment lowerbound  
        MOV BX, AX       
        JMP comp        

   found:            
        ADD AL, 01       
        ADD AL, 30h      
        LEA SI, res      
        MOV [SI], AL     
        LEA DX, msg1     
        JMP print 
        
   notFound:               
        LEA DX, msg2     

   print:               
        MOV AH, 09H      
        INT 21h
        
   .EXIT
   MAIN ENDP
END MAIN            