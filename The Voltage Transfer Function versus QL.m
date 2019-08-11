fratio=0.5:0.01:1.5;   %set the frequency ratio range
eff=0.9; % set the inberter efficiency
pha=0.5236; % the phase is 30 degree
QL=2.5; %the loaded quality factor is 2.5
MVR=eff./sqrt(1+QL^2.*(fratio-1./fratio).^2); %voltage transfer function for QL=2.5
QL1=5.5; %the loaded quality factor is 5.5
MVR1=eff./sqrt(1+QL1^2.*(fratio-1./fratio).^2); %voltage transfer function for QL=2.5
QL2=10.5; %the loaded quality factor is 5.5
MVR2=eff./sqrt(1+QL2^2.*(fratio-1./fratio).^2); %voltage transfer function for QL=2.5
plot(fratio,MVR,'g',fratio,MVR1,'b',fratio,MVR2,'m')
title('The Voltage Transfer Function versus the QL')
legend('QL=2.5','QL=5.5','QL=10.5')
ylabel('|Mvr|')
xlabel('Frequency Ratio f/f0')