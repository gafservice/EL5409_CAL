s=tf('s');
P=[-0.07+1i, -0.07-1i];

modelo=5.5041/(s^2+0.272*s+15.5);

modelo=0.6*modelo

step(modelo)

0.5/0.8 %tiene que andar en 0.6260

dcgain(modelo)

sisotool('rlocus', modelo)

%C2
%tf(C2)
%[num,den]=tfdata(C2,'v')   
%syms KP KI KD N S
%PID= KP+KI/S+S*N*KD/(S+N)
%collect(PID)
%N=den(2)
%KI=num(3)/N
%KP=(num(2)-KI)/N
%KD=(num(1)-KP)/N
%PID= KP+KI/s+s*N*KD/(s+N)