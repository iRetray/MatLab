% comandos para darle limpieza al entorno
clc
clear all
close all

%reduce las salidas de pantalla
format compact

% entradas de datos
texto = 'hola';

% proceso de datos
conversion = double(texto);
bits = dec2bin(conversion);
%reforma una matriz dandole nuevos valores para filas y columnas
cadena = reshape(bits',1,[]);
% al usar bits' se usa la matriz transpuesta 
%el corchete [] calcula solo el valor de y para completar la matriz

% salida de datos
%dos formas de imprimir variables
%se debe usar un identificador segun el tipo %s -> string, %d -> double
%tipos basados en c
fprintf('Texto: %s\n',texto)
fprintf('Conversion a binario %d\n',conversion)
disp(conversion)
disp('Conversion a binario con dec2bin:')
disp(bits)
disp('Unificacion del codigo binario en una sola linea:')
disp(cadena)

%ahora vamos a dibujar los valores
%ones dibuja una matriz de x,y lleno de unos, al igual que zeros


%usando en este caso un tiempo para cada bit
tb = 500

uno = ones(1,tb);
cero = zeros(1,tb);

frame = [ ];

for n=1:length(cadena)
    if(cadena(n)=='1')
        frame = [ frame uno ];
    else
        frame = [ frame cero ]
    end
  
end

cadenaBits = frame*5

disp(frame)

subplot(2,1,1),plot(frame)
axis([ 0 length(frame) -1 2])
title('Se�al binaria')
grid on

subplot(2,1,2),plot(cadenaBits)
axis([ 0 length(frame) -1 6])
title('Cadena de bits')
grid on

