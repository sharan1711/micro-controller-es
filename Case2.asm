ORG 0000H

    MOV R0, 50H      ; R0 = A
    MOV R1, 51H      ; R1 = B

COMPARE:
    MOV A, R0
    JZ  A_ZERO       ; If A == 0, check B

    MOV A, R1
    JZ  B_ZERO       ; If B == 0, check A

    DEC R0           ; A--
    DEC R1           ; B--
    SJMP COMPARE

; -----------------------------
; A reached zero first
A_ZERO:
    MOV A, R1
    JZ  EQUAL        ; Both zero ? equal

    MOV 52H, #0FFH   ; A < B
    SJMP DONE

; -----------------------------
; B reached zero first
B_ZERO:
    MOV A, R0
    JZ  EQUAL        ; Both zero ? equal

    MOV 52H, #01H    ; A > B
    SJMP DONE

; -----------------------------
EQUAL:
    MOV 52H, #00H    ; A == B

DONE:
    SJMP DONE

END
