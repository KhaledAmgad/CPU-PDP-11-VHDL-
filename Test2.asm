MOV 19,R0
MOV #20,R1
MOV #0,R3
CMP @R1,R3
BHS 5
ADD (R1)+,18
DEC R0
BNE -6
BR 4
SUB (R1)+,18
DEC R0
BNE -11
HLT
#0
#7
#4
#-5
#3
#-6
#-1
#8
#-2