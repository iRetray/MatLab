% iniciacion de script, para limpiar variables y evitar mensajes emergentes
clc
clear global
close all

% entrada
amplitud = 10;
frecuencia = 10e3;
anguloTetha = pi/2; % el angulo determina el cambio entre sen/cos/sen-1/cos-1
resolucion = 1000;
cantidadPeriodos = 3;

% procesos
tiempo = linspace(0,cantidadPeriodos/frecuencia,resolucion);
% sinusoidal = amplitud*sin(2*pi*frecuencia*tiempo+anguloTetha);
sinusoidal_0 = amplitud*sin(2*pi*frecuencia*tiempo+0);
sinusoidal_90 = amplitud*sin(2*pi*frecuencia*tiempo+pi/2);
sinusoidal_180 = amplitud*sin(2*pi*frecuencia*tiempo+pi);
sinusoidal_270 = amplitud*sin(2*pi*frecuencia*tiempo+3*pi/2);

% salidas
figure(1)
subplot(2,2,1)
plot(tiempo,sinusoidal_0)
title('Gráfica Senoidal de Seno')
grid on

figure(1)
subplot(2,2,2)
plot(tiempo,sinusoidal_90)
title('Gráfica Senoidal de Coseno')
grid on

figure(1)
subplot(2,2,3)
plot(tiempo,sinusoidal_180)
title('Gráfica Senoidal de Seno Invertido')
grid on

figure(1)
subplot(2,2,4)
plot(tiempo,sinusoidal_270)
title('Gráfica Senoidal de Coseno Invertido')
grid on