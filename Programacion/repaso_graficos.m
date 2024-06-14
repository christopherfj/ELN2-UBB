%Parámetros
A = 220*sqrt(2);
f = 50;
phi = -pi/2;
t = linspace(0,4e-2,1e+4);
y1 = A*sin(2*pi*f*t);
y2 = A*cos(2*pi*f*t+phi);
%Figuras
figure(1)
subplot(2,1,1)
plot(t, y1, 'r') 
title('Seno')
xlabel('Tiempo [s]')
ylabel('Voltaje [v]')
grid('on')
subplot(2,1,2)
plot(t, y2, 'b')
title('Coseno')
xlabel('Tiempo [s]')
ylabel('Voltaje [v]')
grid('on')

