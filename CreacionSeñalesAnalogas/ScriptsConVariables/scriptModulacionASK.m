clc
clear global
close all

g = [1 1 1 1 0 0 0 0];
frecuenciaDeCadaBit = 2;

t = 0:2*pi/99:2*pi;
cp = [];sp=[];
mod = [];mod1=[];bit=[];

for n=1:length(g)
    if g(n)==0
        die=ones(1,100);
        se=zeros(1,100);
    else
        die=2*ones(1,100);
        se=ones(1,100);
    end
    c=sin(frecuenciaDeCadaBit*t);
    cp=[cp die];
    mod=[mod c];
    bit=[bit se];
end

ask=cp.*mod;
subplot(2,1,1);plot(bit,'LineWidth',1.5);grid on;
title('Binary Signal');
axis([0 100*length(g) -2.5 2.5]);

subplot(2,1,2);plot(ask,'LineWidth',1.5);grid on;
title('ASK modulation');
axis([0 100*length(g) -2.5 2.5]);