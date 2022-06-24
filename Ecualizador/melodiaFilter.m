[y,fs] = audioread('melodia.m4a');

lowFiltered = lowpass(y,1000,fs);  %Filtro pasabajos frecuencia 1000
highFiltered = highpass(y,2000,fs); %Filtro pasa altos frecuencia 2000
passFiltered1 = bandpass(y,[1000 2000],fs); %Filtro pasa banda u 1000 y 2000
passFiltered2 = bandpass(y,[3000 4000],fs); %Filtro pasa banda u 3000 y 4000
passFiltered3 = bandpass(y,[5000 6000],fs); %Filtro pasa banda u 5000 y 6000
 
%Señal original
sound(y,fs);
pause(length(y)/fs);
%Señal pasabajos
sound(lowFiltered,fs);
pause(length(y)/fs);
%Señal pasaaltos
sound(highFiltered,fs);
pause(length(y)/fs);
%Señal pasabanda
sound(passFiltered1,fs);
pause(length(y)/fs);
%Suma de todas las respuestas de los filtros 
sound(highFiltered + lowFiltered + passFiltered1 + passFiltered2 +passFiltered3,fs);