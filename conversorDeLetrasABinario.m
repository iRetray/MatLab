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
cadena = reshape(bits',1,28);
% al usar bits' se usa la matriz transpuesta 

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