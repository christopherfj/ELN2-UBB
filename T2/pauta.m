clc
clear all

R1 = 1000;
R2 = 10;
C1 = 1;
C2 = 1;
s =tf('s');
H = (-s*R2*C1)/((s*C2*R2+1)*(s*C1*R1+1));
figure(1)
bode(H);

%%
clc
clear all
load ecg.mat
L = length(y);
Ts = 1/Fs;
t = (0:L-1)*Ts;
[xf, yf] = fourier(y, Fs, L);
figure(1)
subplot(2,1,1)
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')
subplot(2,1,2)
stem(xf, yf)
xlabel('Frecuencia [Hz]')
ylabel('Amplitud')
grid('on')

yfft = fft(y);
yfft(751) = 0;
yfft(3001) = 0;
y = ifft(yfft);
[xf, yf] = fourier(y, Fs, L);
figure(2)
subplot(2,1,1)
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')
subplot(2,1,2)
stem(xf, yf)
xlabel('Frecuencia [Hz]')
ylabel('Amplitud')
grid('on')

y = lowpass(y,20,Fs);
[xf, yf] = fourier(y, Fs, L);
figure(3)
subplot(2,1,1)
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')
subplot(2,1,2)
stem(xf, yf)
xlabel('Frecuencia [Hz]')
ylabel('Amplitud')
grid('on')

