ORG 0000H

; -----------------------------
; Construct HIGH byte = 16H
; -----------------------------
CLR A              ; A = 00H
ORL A, #10H        ; A = 10H
ORL A, #06H        ; A = 16H
MOV B, A           ; Store high byte in B

; -----------------------------
; Construct LOW byte = 8BH
; -----------------------------
CLR A              ; A = 00H
ORL A, #80H        ; A = 80H
ORL A, #0BH        ; A = 8BH

; -----------------------------
; Final Result
; B:A = 168BH = 5771 (decimal)
; -----------------------------

HERE: SJMP HERE    ; Stop execution

END
