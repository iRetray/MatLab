clc
clear global
close all

% ENTRADAS
n = 1;
frecuencia = 10e3;
repeticiones = 11; % numero impar
resolucion = 1000;

% PROCESOS
tiempo = linspace(0,cantidadPeriodos/frecuencia,resolucion);
componente1 = (1/1)*sin(2*pi*frecuencia*tiempo);
componente2 = (1/3)*sin(2*pi*3*frecuencia*tiempo);
cuadrada = componente1 + componente2;

for coeficiente = 1:+2:repeticiones
    componente = (1/coeficiente)*sin(2*pi*coeficiente*frecuencia*tiempo);
    cuadrada = cuadrada + componente;
end

texto = cat(2,'Resultante serie de Fourier hasta: ', repeticiones);

figure(1)
plot(tiempo,cuadrada)
title(texto)
grid on