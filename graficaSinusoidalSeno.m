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
sinusoidal = amplitud*sin(2*pi*frecuencia*tiempo+anguloTetha);

% salidas
figure(1)
plot(tiempo,sinusoidal)
title('Gráfica Senoidal de Seno')
grid on
