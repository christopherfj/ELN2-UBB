%% Pasa bajos - Primer oden
clc
clear all

R = 1e3;
C = 1e-6; 
s = tf('s');
H = 1 / (R*C*s + 1);
%num = [1];
%den = [R*C 1];
%H = tf(num,den);
figure(1)
bode(H)
grid('on')

%% Pasa altos - Primer orden
clc
clear all

R = 1e3;
C = 1e-6; 
num = [R*C 0];
den = [R*C 1];
H = tf(num, den);
figure(2)
bode(H)
grid('on')

%% Pasa bajos - Segundo oden
clc
clear all

R = 1e3;
L = 1e-3;
C = 1e-6; 
s = tf('s');
H = 1 / (C*L*(s*s)+R*C*s + 1);
figure(1)
bode(H)
grid('on')