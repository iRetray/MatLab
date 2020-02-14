  
clc 
clear global
close all



%--------INPUT--------
%carrier
Ac = 10;
fc = 1000e3;
thetac = 0;
cpc = 16;

%xt
Ax = 2;
fx = 3400;
thetax = 0;
cpx = 2;

%indice modulacion 0 <= m <=
m = 0.4;
%indice modulacion M, npm >=2
nfm = 2;
%indice modulacion PM, npm >=2
npm = 2;

%--------PROCESS------
%carrier
tc = linspace(0,cpc/fc,500);
carrier = Ac*sin(2*pi*fc*tc + thetac);

%xt
tx = linspace(0,cpx/fx,500);
xt = Ax*sin(2*pi*fx*tx + thetax);

%Modulacion AM
xam = (1+m*xt).*carrier;

%modulacion FM
xfm = Ac*sin(2*pi*fc*tc + nfm*xt);


%modulacion PM
xt_diff = Ax*sin(2*pi*fx*tx + (thetax+pi/2));
xpm = Ac*sin(2*pi*fc*tc + npm*xt_diff);

%--------OUTPUT-------
figure (1)
subplot(5,1,1)
plot(tx,xt)
title('Datos Analogos x(t)')
grid on

subplot(5,1,2)
plot(tc,carrier)
title('Señal Portadora carier (t)')
grid on

subplot(5,1,3)
plot(tc,xam)
title('Señal AM')
grid on

subplot(5,1,4)
plot(tc,xfm)
title('Señal FM')
grid on

subplot(5,1,5)
plot(tc,xpm)
title('Señal PM')
grid on