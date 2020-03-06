function matrizPlayfair = llenarMatrizPlayfair(textoClaro, clave)
matrizPlayfair = ['0' '0' '0' '0' '0'; '0' '0' '0' '0' '0'; '0' '0' '0' '0' '0'; '0' '0' '0' '0' '0'; '0' '0' '0' '0' '0'];
for i = 1 : +1 : length(clave)
    letraAsignada = '0';
    if clave(i)~=' '
        for j = 1 : +1 : 5
            for k = 1 : +1 : 5
                if matrizPlayfair(j,k) == '0'
                    matrizPlayfair(j,k) = clave(i);
                    break
                end
            end
        end
    end
end
end

%Corregir el error de que llena todas las columnas