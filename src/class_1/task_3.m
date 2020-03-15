%% Signal & System Experiment - Class 1 - Task 3
% Requires square_wave.m to function.
n = 200;    % Increase to gain accuracy.

t = linspace(0,4*pi,1001);
y = square_wave(n);
figure('name','Task 3', 'numbertitle','off');
plot(t,y); xlabel('t'); ylabel('y');