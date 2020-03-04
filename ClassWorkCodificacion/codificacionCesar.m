clc
clear global
close all

textoOriginal = 'HOLA';

abecedario = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];

for i=1:length(textoOriginal)
    print = strcat(textoOriginal(i),"\n");
    fprintf(print);
end


fprintf("Hellow");