%% Filtro pasa bajo - primer orden
clc
clear all

C = 0.01e-6;
R = 16e+3;
RA = 17.8e+3;
RF = 160e+3;
G = 1+(RF/RA);
num = [G/(R*C)];
den = [1 1/(R*C)];
H = tf(num,den);
figure(1)
bode(H)
grid('on')

%% Filtro pasa alto - primer orden
clc
clear all

C = 0.01e-6;
R = 15.9e+3;
RA = 17.7e+3;
RF = 159e+3;
G = 1+(RF/RA);
num = [1 0];
den = [1 1/(R*C)];
H = G*tf(num,den);
figure(1)
bode(H)
grid('on')
