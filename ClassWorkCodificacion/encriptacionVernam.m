clc
clear global
close all

textoClaro = 'HOLA MUNDO';
for i = 1 : +1 : length(textoClaro)
    if textoClaro(i) == ' '
    else
        valorAssci = double(textoClaro(i));
        valorBitsSinCero = dec2bin(valorAssci);
        valorBits = str2double('0'+int2str(valorBitsSinCero));
        disp(textoClaro(i))
        disp(valorBits)
    end
end



% randi([10 50],1,5)