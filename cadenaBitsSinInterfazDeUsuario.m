clc
clear all 
close all
%---INPUT---
texto = 'a';
regla_bit_alto = 0;

% --- PROCESS---
ascii = double (texto);
bits = dec2bin(ascii);
cadena = reshape(bits',1,[]);


tb = 50;

unos = ones(1,tb);

ceros = zeros(1,tb);

frame = [];
frameinv = [];

for n=1:length(cadena)
    
    if (cadena (n)== '1')
        frame = [ frame unos ];
        frameinv = [ frameinv ceros ];
    
    else
        frame = [ frame  ceros ];
        frameinv = [ frameinv unos ];
    end 
end 

if (regla_bit_alto ==1)
    cadena_bits = 5*frame;
 
else 
    cadena_bits = 5*frameinv; 
    
end




%---OUTPUT---

fprintf('texto: %s\n',texto)
ascii
bits
cadena

figure (1)
subplot (2,1,1)
plot(frame)
axis ([ 0 length(frame) -1 6 ])
title('señal binaria')
grid on


figure (1)
subplot (2,1,2)
plot(cadena_bits)
axis ([ 0 length(cadena_bits) -1 6 ])
title('cadena BITS')
grid on