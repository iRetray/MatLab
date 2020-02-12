clc
clear global
close all

% Variables

voltaje = 10;
frecuenciaPortadora = 1000e3;
thetac = 0;
cantidadPeriodos = 10; 

voltajeX = 2;
frecuenciaX = 3400;
thetax = 0;
cantidadPeriodosX = 2;

indiceDeModulacionAM = 0.4; % en el rango de 0-1
indiceDeModulacionFM = 2; % mayor o igual a 2
indiceDeModulacionPM = 2; % mayor o igual a 2

linea = linspace(0,cantidadPeriodos/frecuenciaPortadora,500);
lineaX = linspace(0,cantidadPeriodosX/frecuenciaX,500);

% Procesos de creacion de vectores modulados

carrier = voltaje*sin(2*pi*frecuenciaPortadora*linea+thetac);
datoAnalogo = voltajeX*sin(2*pi*frecuenciaX*lineaX+thetax);
modulacionTipoAM = (1+indiceDeModulacionAM*datoAnalogo).*carrier;
modulacionTipoFM = (1+indiceDeModulacionFM*datoAnalogo).*carrier;
modulacionTipoPM = (1+indiceDeModulacionPM*datoAnalogo).*carrier;

% Graficación

figure(1)

subplot(5,1,1)
plot(lineaX,datoAnalogo)
title('Datos Análogos x(t)')

subplot(5,1,2)
plot(linea,carrier)
title('Señal portadora carrier x(t)')

subplot(5,1,3)
plot(linea,modulacionTipoAM)
title('Señal AM')

subplot(5,1,4)
plot(linea,modulacionTipoFM)
title('Señal FM')

subplot(5,1,5)
plot(linea,modulacionTipoPM)
title('Señal PM')

