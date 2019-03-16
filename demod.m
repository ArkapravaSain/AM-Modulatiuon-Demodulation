clc;
close all;
clear all;

disp(' example: m=1 means 100% modulation');
m=input('Enter the value of modulation index (m) =  ');
if (0>m||m>1)
error('m may be less than or equal to one and geter than to zero'); 
end

Am=5; % Amplitude of modulating signal
fa=2000; % Frequency of modulating signal
Ta=1/fa; % Time period of modulating signal
t=0:Ta/999:6*Ta; % Total time for simulation
Ac=Am/m;% Amplitude of carrier signal [ where, modulation Index (m)=Am/Ac ]
fc=fa*10;% Frequency of carrier signal
Tc=1/fc;% Time period of carrier signal

y=Ac*(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t); % Equation of Amplitude
%modulated signal
subplot(2,1,1),plot(t,y);
title ( '  Amplitude Modulated signal  ');
xlabel (' time(sec) ');
ylabel (' Amplitude(volt)   ');
grid on;


ym=Am*sin(2*pi*fa*t); % Eqation of modulating signal
subplot(2,1,2),plot(t,ym) 
grid on;
title ( '  Modulating Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   ');










