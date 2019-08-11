R1=54.7
L1=220.07e-6
C1=11.87e-9
num1=[R*C 0]
denom1=[L*C R*C 1]
f1=1/(2*pi*sqrt(L1*C1))
w1=2*pi*f1
w_range1 = [0*w1:0.1:5*w1];
h1=bode(num1,denom1,w_range1);
magh1=abs(h1);

R2=27.35
L2=229.3e-6
C2=10e-9
num2=[1/L2 0]
denom2=[1 R2/L2 1/(L2*C2)]
f2=1/(2*pi*sqrt(L2*C2))
w2=2*pi*f2
w_range2 = [0*w2:0.1:5*w2];
h2=bode(num2,denom2,w_range2);
magh2=abs(h2);



R3=12.31
L3=213.49e-6
C3=10.36e-9
num3=[1/L3 0]
denom3=[1 R3/L3 1/(L3*C3)]
f3=1/(2*pi*sqrt(L3*C3))
w3=2*pi*f3
w_range3 = [0*w3:0.1:5*w3];
h3=bode(num3,denom3,w_range3);
magh3=abs(h3);
plot(w_range1,magh1/max(magh1),'b',w_range2,magh2/max(magh2),'g',w_range3,magh3/max(magh3),'m')
title('The Voltage Transfer Function versus the Switching Frequency and QL')
legend( 'QL=2.5','QL=5.5','QL=10.5')
ylabel('|Mvr|')
xlabel('Frequency')


