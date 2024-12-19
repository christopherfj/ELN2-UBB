function [xf, P1] = fourier(y, Fs, L)

Y = fft(y);
P2 = abs(Y/L);     
P1 = P2(1:L/2+1);   
P1(2:end-1) = 2*P1(2:end-1);
xf = Fs*(0:(L/2))/L;

end