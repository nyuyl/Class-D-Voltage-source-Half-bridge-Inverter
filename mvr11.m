MVR=0;
QL=2;
E=0.9;
ratio=0;
ratio=(sqrt(1-(MVR./0.9).^2+4*QL^2*(MVR./0.9).^2)-sqrt(1-(MVR./0.9).^2))/(2*QL*(MVR./0.9))
MVR1=0:0.1:2;
ratio1=(sqrt(1-(MVR1./0.9).^2+4*QL^2*(MVR1./0.9).^2)-sqrt(1-(MVR1./0.9).^2))/(2*QL*(MVR1./0.9))       

plot(ratio,MVR,ratio1,MVR)
