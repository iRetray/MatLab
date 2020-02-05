clc
clear global
close all

% ENTRADAS
frecuencia = 10e3;
repeticiones = 5; % numero impar
resolucion = 1000;
cantidadPeriodos = 3;
amplitud = 10;
anguloTetha = pi/2; % el angulo determina el cambio entre sen/cos/sen-1/cos-1
repeticionesTriangular = 1;
cantidadFrecuencia = 30;
triangular = 0;
diente = 0;

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

sinusoidal_0 = amplitud*sin(2*pi*frecuencia*tiempo+0);

for coeficiente = 1.0:+2.0:(cantidadFrecuencia*2-1)
    triangular = triangular + (1/(coeficiente^2)) * cos(2*pi*coeficiente*frecuencia*tiempo);     
end

triangularCompleta = (pi/2)-(4/pi) * triangular; 

for coeficiente = 1.0:+1.0:cantidadFrecuencia
    diente = diente + sin(2*pi*coeficiente*frecuencia*tiempo)/coeficiente;     
end

dienteSierra = (pi-2) * diente;

% SALIDAS

textoCuadrada = cat(2,'Serie de Fourier Cuadrada con ', num2str(repeticiones),' repeticiones');

figure(1)
subplot(2,2,2);
plot(tiempo,cuadrada)
title(textoCuadrada)
grid on

figure(1)
subplot(2,2,1)
plot(tiempo,sinusoidal_0)
title('Gráfica Senoidal de Seno')
grid on

figure(1)
subplot(2,2,3)
plot(tiempo,triangularCompleta)
title('Serie de Fourier Triangular')
grid on

figure(1)
subplot(2,2,4)
plot(tiempo,dienteSierra)
title('Serie de Fourier Diente Sierra')
grid on


