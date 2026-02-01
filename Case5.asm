ORG 0000H

    MOV R0, #40H     ; Read pointer (source)
    MOV R1, #40H     ; Write pointer (destination)
    MOV R2, #20H     ; Counter = 32 bytes

SCAN:
    MOV A, @R0       ; Read byte from RAM
    CJNE A, #0FFH, VALID
    SJMP NEXT        ; If FFH, skip writing

VALID:
    MOV @R1, A       ; Store valid data
    INC R1           ; Advance write pointer

NEXT:
    INC R0           ; Advance read pointer
    DJNZ R2, SCAN    ; Loop 32 times

; -------- Fill remaining locations with 00H --------
    MOV A, #00H

FILL:
    CJNE R1, #60H, CONT
    SJMP DONE

CONT:
    MOV @R1, A
    INC R1
    SJMP FILL

DONE:
    SJMP DONE        ; Stop execution

END
