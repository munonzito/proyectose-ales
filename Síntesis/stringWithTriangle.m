function [y] = stringWithTriangle(u,d)
%u: frecuencia , d: duración
guitarTension = 15; %Tensión de la guitarra
massDensity = 0.0235; %Densidad de la cuerda
c = sqrt(guitarTension/massDensity); %Constante
a = 1; %amplitude
L = 25; %Largo de la cuerda (cm)
fs = 24000; %Frecuenia de muestreo
n=fs*d; %Número de muestras en frecuencia
t =(1:n)/fs; %Numero de muestras en tiempo
triangle = (1-abs(t/d)) %Función triangulo
%La ecuacion de la cuerda se multiplica por un trinagulo.
y = a*(L/2)*((sin((L/2)*u)./t).^2).*cos(2*c*u*pi.*t).*triangle; 