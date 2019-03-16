clc;
close all;
clear all;

disp('m=1 means 100% modulation');
m=input(' Enter the value of modulation index (m) = ');

Am=5; % Amplitude of modulating signal
fa=2000; % Frequency of modulating signal
Ta=1/fa; % Time period of modulating signal
t=0:Ta/999:6*Ta; % Total time for simulation
ym=Am*sin(2*pi*fa*t); % Eqation of modulating signal
figure(1)
subplot(3,1,1); 
plot(t,ym), grid on;% Graphical representation of Modulating signal
title ( '  Modulating Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   ');

Ac=Am/m;% Amplitude of carrier signal [ where, modulation Index (m)=Am/Ac ]
fc=fa*10;% Frequency of carrier signal
Tc=1/fc;% Time period of carrier signal
yc=Ac*sin(2*pi*fc*t);% Eqation of carrier signal
subplot(3,1,2);
plot(t,yc), grid on;% Graphical representation of carrier signal
title ( '  Carrier Signal   ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   ');

 
y=Ac*(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t); 
subplot(3,1,3);
plot(t,y);% Graphical representation of AM signal
title ( '  Amplitude Modulated signal  ');
xlabel ( ' time(sec) ');
ylabel (' Amplitud(volt)   ');
grid on;




