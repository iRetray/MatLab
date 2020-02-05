clc
clear global
close all

% ENTRADAS
amplitud = 10;
frecuencia = 10e3;
resolucion = 1000;
cantidadPeriodos = 5;
cantidadFrecuencia = 50;
triangular = 0;

% PROCESOS
tiempo = linspace(0,cantidadPeriodos/frecuencia,resolucion);

coeficenteDeAmplitud = (pi/2) - (4/pi);
sumatoriaUnica = cos((2*n-1)*w) / ((2*n-1)*(2*n-1));

for coeficiente = 1.0:+1.0:cantidadFrecuencia
    triangular = triangular + sin(2*pi*coeficiente*frecuencia*tiempo)/coeficiente;     
end

triangularCompleta = (pi-2) * triangular; 

texto = cat(2,'Resultante serie de Fourier Triangular hasta: ', num2str(cantidadFrecuencia));
texto2 = cat(2,'Resultante serie de Fourier Triangular con Coeficiente hasta: ', num2str(cantidadFrecuencia));

figure(1)
subplot(2,1,1)
plot(tiempo,triangular)
title(texto)
grid on

figure(1)
subplot(2,1,2)
plot(tiempo,triangularCompleta)
title(texto2)
grid on
