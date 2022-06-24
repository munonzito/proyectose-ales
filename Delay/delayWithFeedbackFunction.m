function [] = delayWithFeedbackFunction(delayTime, feedbackCoefficient,stringFunction)

%delayTime (seg), 0 < feedBackCoefficient < 1
%Se empieza haciendo sonar la señal original
sound(stringFunction,44100);

%Se hace sonar la señal 5 veces pero en cada iteración 
%la amplitud se disminuye multiplicando por el 
%coeficiente de feedback y elevandolo al numero de la iteracion
for n = 1:5
    pause(delayTime) %Delay
    sound(stringFunction*(feedbackCoefficient)^n,44100) %Feedback
end

end

