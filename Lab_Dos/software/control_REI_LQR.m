sys=ss(modelo)
A=[0 1; -15.5 -0.272 ] %función de transferencia, asíntota y factor de s
B=[0; 3.302]
C=[1 0]
sys=ss(A,B,C,0) %Cero porque es siso
tf(sys)
As=[A [0;0]; -C 0]
Bs=[B;0]
Ms=[Bs As*Bs As^2*Bs]
det(Ms)
rank(Ms)
Ps=[-1+i -1-i -2.9]*0.2
Ks=place(As, Bs, Ps) %ki=-ks[3]

%LQR

Q=eye(3)
R=1
Ks=lqr(As,Bs,Q,R)
eig(As-Bs*Ks)

%bloque PID controller 2dof

K=Ks[1:2]
Ki=-Ks[3]
