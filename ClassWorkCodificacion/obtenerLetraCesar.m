function conversionCesar = obtenerLetraCesar(letra)
abecedario = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'];
if letra=='X' || letra=='Y' || letra=='Z' || letra==' '
   if letra=='X'
       conversionCesar = 'A';
   end
   if letra=='Y'
       conversionCesar = 'B';
   end
   if letra=='Z'
       conversionCesar = 'C';
   end
   if letra==' '
       conversionCesar = ' ';
   end
else
    for i = 1 : +1 : length(abecedario)
        if abecedario(i) == letra
            conversionCesar = abecedario(i+3);
        end
    end
end
end
