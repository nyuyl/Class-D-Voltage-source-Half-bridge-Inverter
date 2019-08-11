
R1=49.242
L1=220.07e-6
C1=11.87e-9
MVR1 = tf( [R1*C1 0] , [L1*C1 R1*C1 1]);% voltage transfer function(QL=2.5)
                                        % [R*C 0] vector of numerator coeffcients
                                        % R*C*s + 0*1
                                        % [L*C R*C 1] vector of denominator coeff.
R2=27.35;
L2=229.3e-6;
C2=10e-9;
MVR2 = tf( [R2*C2 0] , [L2*C2 R2*C2 1]); % voltage transfer function(QL=5.5)

R3=12.31
L3=213.49e-6
C3=10.36e-9                              
MVR3 = tf( [R3*C3 0] , [L3*C3 R3*C3 1]); % voltage transfer function(QL=10.5)

P = bodeoptions;           % handle to plot options
P.MagScale = 'linear';
P.MagUnits = 'abs';
 

bodeplot(MVR1,P,MVR2,P,MVR3,P)
title('The Voltage Transfer Function versus the Switching Frequency')
legend('QL=2.5','QL=5.5','QL=10.5')

