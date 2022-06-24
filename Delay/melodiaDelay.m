[y,Fs] = audioread("melodia.m4a"); % Se lee la señal melodia
delayTime = 2; %Tiempo del delay
feedbackCoefficient = 0.8; %Coeficiente de feedback
%Se aplica el delay con feedback a la melodia.
delayWithFeedbackFunction(delayTime,feedbackCoefficient,y)
