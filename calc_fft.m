% Author: Luciano de Oliveira Daniel
% https://sites.google.com/site/professorlucianodaniel

load('FFT.mat')
Fs = 1E6;
T = 1/Fs;
L = 1E5;
t = (0:L-1)*T;
volt = sin(2*pi*60*t);
harm1=.05*sin(2*pi*3*60*t)+.040*sin(2*pi*7*60*t)+.044*sin(2*pi*11*60*t);
harm2=.045*sin(2*pi*6*60*t)+.035*sin(2*pi*18*60*t)+.025*sin(2*pi*24*60*t);
harm3=.01*sin(2*pi*100*60*t)+.007*sin(2*pi*200*60*t)+.003*sin(2*pi*300*60*t);
S = volt + harm1 + harm2 + harm3;
figure(1)
plota_v(t,S)