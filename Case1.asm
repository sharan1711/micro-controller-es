ORG 0000H

; Step 1: Load 10 into A
MOV A, #10

; Step 2: Add 5 ? A = 15
ADD A, #05

; Step 3: Multiply by 100
MOV B, #100
MUL AB            ; B:A = 1500 (05DCH)

; Step 4: Add 11
ADD A, #11        ; B:A = 1511 (05E7H)

; Final Result:
; B = 05H (High byte)
; A = E7H (Low byte)
; B:A = 1511 (decimal)

HERE: SJMP HERE

END

