[y,fs] = audioread('acorde.m4a');

lowFiltered = lowpass(y,10,fs); %Filtro pasabajos frecuencia 10
highFiltered = highpass(y,2000,fs); %Filtro pasa altos frecuencia 2000
passFiltered1 = bandpass(y,[3000 5000],fs); %Filtro pasa banda u 3000 y 5000
passFiltered2 = bandpass(y,[3500 5500],fs); %Filtro pasa banda u 3500 y 5500
passFiltered3 = bandpass(y,[4000 4500],fs); %Filtro pasa banda u 4000 y 4500

sound(y,fs); %Señal original
pause(length(y)/fs);
sound(lowFiltered,fs); %%Señal filtrada con pasabajos
pause(length(y)/fs);
sound(highFiltered,fs); %%Señal filtrada con pasaaltos
pause(length(y)/fs); 
sound(passFiltered1,fs); %Señal filtrada pasabanda
pause(length(y)/fs); 
%Suma de todas las respuestas de los filtros 
sound(highFiltered + lowFiltered + passFiltered1 + passFiltered2 +passFiltered3,fs);

