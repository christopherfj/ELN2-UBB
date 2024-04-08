clc;
clear;

%% P1
disp("P1");
fprintf("Electrónica II\n");
disp("Electrónica II");

%% P2
disp("P2");
I = input("Valor de corriente: ");
R = input("Valor de resistencia: ");
V = I*R;
fprintf("Voltaje: %.2f\n", V);

%% P3
disp("P3");
R1 = input("Valor de resistencia 1: ");
R2 = input("Valor de resistencia 2: ");
if(R1>R2)
    disp("R1 es mayor");
else
    disp("R2 es mayor");
end

%% P4
disp("P4");
tol = input("Valor de la tolerancia: ", 's');
if isequal(tol, "oro")
    disp("5%");
elseif isequal(tol, "plata")
    disp("10%");    
else
    disp("20%");    
end

%% P5
disp("P5");
V = 220;
R = 1000;
while R>0
    I = V/R;
    disp(I);
    R = R-100;
end

%% P6 (bonus)
disp("P6");
M = [1,2,3;3,4,5;5,6,7];
s = sumaPar(M);
disp(s);

%% P7 (bonus)
disp("P7");
x = [1,2,3,4];
y = [1,2,3,4];
figure(1);
plot(x,y,'r--o')
xlabel('x')
ylabel('y')
title('Ejemplo')
