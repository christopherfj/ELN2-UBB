clc
clear all

%% Señales

A1 = 50;
f1 = 50;
A2 = 100;
f2 = 100;
L = 1e+2;
Fs = 10e+2;
Ts = 1/Fs; 
t = (0:L-1)*Ts;

y1 = A1*sin(2*pi*f1*t);
y2 = A2*sin(2*pi*f2*t);
y = y1+y2;

figure(1)
subplot(3,1,1)
plot(t,y1)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')
subplot(3,1,2)
plot(t,y2)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')
subplot(3,1,3)
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud [V]')
grid('on')

%% Fourier

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

%% Filtrado

Y = fft(y);
%stem(abs(Y))
Y(11) = 0;
Y(91) = 0;

y = ifft(Y);
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
