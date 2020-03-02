clc
clear global 
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
    cadena_bits = 10*frameinv; 
    
end


%---OUTPUT---


figure (1)
plot(cadena_bits)
axis ([ 0 length(cadena_bits) -1 11 ])
title('cadena BITS')
grid on