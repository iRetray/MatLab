clc
clear global
close all

% ENTRADAS
frecuencia = 10e3;
repeticiones = 1; % numero impar
resolucion = 1000;
cantidadPeriodos = 2;

% PROCESOS
tiempo = linspace(0,cantidadPeriodos/frecuencia,resolucion);

for coeficiente = 1.0:+2.0:repeticiones
    componente = (1/coeficiente)*sin(2*pi*coeficiente*frecuencia*tiempo);
    if coeficiente == 1
        cuadrada = componente;
    else
       cuadrada = cuadrada + componente; 
    end       
end

texto = cat(2,'Resultante serie de Fourier hasta: ', num2str(repeticiones));

figure(1)
plot(tiempo,cuadrada)
title(texto)
grid on
