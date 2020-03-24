%% Signal & System Experiment - Class 2 - Task 1
pace = 0.01;    % Determines accuracy, reduce to increase sampling rate.
figure('name','Task 1', 'numbertitle','off');

% Fig 2.(1)
range_t = [-1 2];    % Range of t.
t0 = range_t(1):pace:range_t(2);
t = 2*range_t(1):pace:2*range_t(2);
f1 = heaviside(t0) - heaviside(t0-1);
f2 = 2*t0.*(heaviside(t0) - heaviside(t0-1));
f = conv(f1,f2)*pace;
subplot(211);plot(t,f); title('Fig 1.(1)'); xlabel('t'); ylabel('f1*f2');

% Fig 1.(2)
range_t = [-3 5];    % Range of t.
t0 = range_t(1):pace:range_t(2);
t = 2*range_t(1):pace:2*range_t(2);
f1 = cos(30*t0).*rectpuls(t0,5);
f2 = heaviside(t0) - heaviside(t0 - 4);
f = conv(f1,f2)*pace;
subplot(212);plot(t,f); title('Fig 1.(2)'); xlabel('t'); ylabel('f1*f2');