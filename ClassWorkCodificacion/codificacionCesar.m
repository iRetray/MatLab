clc
clear global
close all

textoOriginal = 'HOLA COMO ESTAS';
codificacion = '';

abecedario = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

disp('Texto claro')
fprintf(textoOriginal);
for i = 1 : length(textoOriginal)
    codificacion(i) = obtenerLetraCesar(textoOriginal(i));
end
disp(' ');
disp('Criptograma')
fprintf(codificacion);
disp(' ');
