tf(C2)
[num,den]=tfdata(C2,'v')   
syms KP KI KD N S
PID= KP+KI/S+S*N*KD/(S+N)
collect(PID)
N=den(2)
KI=num(3)/N
KP=(num(2)-KI)/N
KD=(num(1)-KP)/N
PID= KP+KI/s+s*N*KD/(s+N)