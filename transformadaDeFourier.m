clc
clear global
close all

% Entradas de datos
frecuencia = 10e3;
repeticiones = 17; % numero impar
resolucion = 1000;
cantidadPeriodos = 2;

% Procesos para obtenerla en funcion del tiempo
tiempo = linspace(0,cantidadPeriodos/frecuencia,resolucion);

for coeficiente = 1.0:+2.0:repeticiones
    componente = (1/coeficiente)*sin(2*pi*coeficiente*frecuencia*tiempo);
    if coeficiente == 1
        cuadrada = componente;
    else
       cuadrada = cuadrada + componente; 
    end       
end

% Proceso para obtenerla en funcion de la frecuencia (Hz)
% En este caso se usa fft (Fast Fourier Transform)
% el valor absoluto deja manejable la trasnformada, que naturalmente esta
% en modo complejo

cuadradadaFourier = abs(fftshift(fft(cuadrada)));


% Impresiones de datos
% falta crear un valor para el valor x con una frecuencia escalada en
% 10

texto = cat(2,'Serie de Fourier en función del tiempo, con: ', num2str(repeticiones)),' repeticiones.';
textoFourier = cat(2,'Serie de Fourier en función de la frecuencia, con: ', num2str(repeticiones)),' repeticiones.';

figure(1)
subplot(1,2,1)
plot(tiempo,cuadrada)
title(texto)
grid on

subplot(1,2,2)
plot(cuadradadaFourier(475:530))
title(textoFourier)
grid on