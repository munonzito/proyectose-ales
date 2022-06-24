function [] = reverberador(duration,stringFunction)

%Se hace sonar la señal original
sound(stringFunction,44100);

%Se hace sonar la señal disminuyendo su amplitud en cada iteración
for n = 1:duration
    pause(1)
    sound(stringFunction*(0.8)^n,44100)
end

end
