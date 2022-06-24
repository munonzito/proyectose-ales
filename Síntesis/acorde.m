%Cada y representa una cuerda, cada una recibe como parámetro
%una frecuencia y la duración.
y1 = customString(4,5);
y2 = customString(6,5);
y3 = customString(8,5);
y4 = customString(9,5);
y5 = customString(12,5);
y6 = customString(14,5);

fs = 24000; %Frecuencia de muestreo

%Se hace sonar cada cuerda para formar un acorde,
%agregando un pequeño retardo entre cada sonido.
sound(y1, fs);
pause(0.05)
sound(y2, fs);
pause(0.05)
sound(y3, fs);
pause(0.05)
sound(y4, fs);
pause(0.05)
sound(y5, fs);
pause(0.05)
sound(y6, fs);