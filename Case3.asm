ORG 0000H

CLR P3.4        ; Enable display-select decoder

MOV A, 30H      ; Load segment code
MOV P1, A       ; Send to 7-segment

CLR P3.0        ; Enable digit 0
SETB P3.1
SETB P3.2
SETB P3.3

HERE:
    SJMP HERE

END
