[y,Fs] = audioread("acorde.m4a"); % Se lee la señal acorde
delayTime = 1; %Tiempo del delay
feedbackCoefficient = 0.8; %Coeficiente de feedback
%Se aplica el delay con feedback al acorde.
delayWithFeedbackFunction(delayTime,feedbackCoefficient,y);