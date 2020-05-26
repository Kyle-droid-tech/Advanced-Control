%%??????????
m=1;
k=1;
c=0.1;

A=[0 1; -k/m -c/m];
B=[0;1/m];
C=[1 0];
D=[0];
eig(A);
sys=ss(A,B,C,D);

x0=[1 0];
f0=figure;
initial(sys,x0);

f1=figure;
p1=[-1,-3];
K1=place(A,B,p1);
A1=A-B*K1;
eig(A1);
sys1=ss(A1,[],C,[]);
initial(sys1,x0);

%[b,a]=ss2tf(A1,B,C,D);
%Path=[b,a];

f2=figure;
sys2=tf([0 0 1],[1 4 3])
C2=[1 0;0 1;-K1];
sys2=ss(A1,[],C2,[]);
initial(sys2,x0);

f02=figure;
p2=[-2,-3];
K2=place(A,B,p2);
A2=A-B*K2;
eig(A2);
sys2=ss(A2,[],C,[]);
initial(sys2,x0);

f03=figure;
p3=[-1,-4];
K3=place(A,B,p3);
A3=A-B*K3;
eig(A3);
sys3=ss(A3,[],C,[]);
initial(sys3,x0);

f04=figure;
Q4=[10 0;0 0];
R4=[1];
[K4,S,e]=lqr(A,B,Q4,R4);
A4=A-B*K4;
eig(A4);
C4=[1 0;1 0;-K4];
sys4=ss(A4,[],C4,[]);
initial(sys4,x0);

f05=figure;
Q5=[1 0;0 0];
R5=[1];
[K5,S,e]=lqr(A,B,Q5,R5);
A5=A-B*K5;
eig(A5);
C5=[1 0;1 0;-K5];
sys5=ss(A5,[],C5,[]);
initial(sys5,x0);

f06=figure;
Q6=[10 0;10 0];
R6=[1];
[K6,S,e]=lqr(A,B,Q6,R6);
A6=A-B*K6;
eig(A6);
C6=[1 0;1 0;-K6];
sys6=ss(A6,[],C6,[]);
initial(sys6,x0);

f07=figure;
Q7=[100 0;0 10];
R7=[1];
[K7,S,e]=lqr(A,B,Q7,R7);
A7=A-B*K7;
eig(A7);
C7=[1 0;1 0;-K7];
sys7=ss(A7,[],C7,[]);
initial(sys7,x0);
