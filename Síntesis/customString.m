function [y] = customString(u,d)
%u: Frecuencia , d: Duración
guitarTension = 15; %Tensión de la guitarra
massDensity = 0.0235; %Densidad de la cuerda
c = sqrt(guitarTension/massDensity); % Constante c
a = 1; %Amplitud
L = 25; %Largo de la cuerda (cm)
fs = 24000; %Frecuencia de muestreo
n=fs*d; %Numero de muestras frecuencia
t =(1:n)/fs; %Numero de muestras tiempo

y = a*(L/2)*((sin((L/2)*u)./t).^2).*cos(2*c*u*pi.*t)

end

