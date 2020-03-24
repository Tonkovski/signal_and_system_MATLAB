%% Signal & System Experiment - Class 2 - Task 4
pace = 0.01;    % Determines accuracy, reduce to increase sampling rate.
range_t = [-5 5];   % Can be changed manually;
t = range_t(1):pace:range_t(2);

% Section 4.(1)
m = 999;    % Can be changed manually;
f = zeros(size(t));
for n = 1:m
    temp = sin(n*t)./n;
    f = f + temp;
end
figure('name','Task 4    Section 4.(1)', 'numbertitle','off');
plot(t,f); title('Digital Approximation'); xlabel('t'); ylabel('y (Approximate)');

% Section 4.(2)
f = 1.5*sawtooth(-t);
figure('name','Task 4    Section 4.(2)', 'numbertitle','off');
plot(t,f); title('Hypothesis Testing'); xlabel('t'); ylabel('y (Hypothesis)'); ylim([-2 2]);

% Section 4.(3)
f = zeros(size(t));
figure('name','Task 4    Section 4.(3)', 'numbertitle','off'); hold on;
for n = 1:50
    temp = sin(n*t)./n;
    f = f + temp;
end
plot(t,f,'r');
for n = 51:100
    temp = sin(n*t)./n;
    f = f + temp;
end
plot(t,f,'g');
for n = 101:200
    temp = sin(n*t)./n;
    f = f + temp;
end
plot(t,f,'b');
legend('n = 50', 'n = 100', 'n = 200'); title('Comparison fn'); xlabel('t'); ylabel('y');

% Section 4.(4)
figure('name','Task 4    Section 4.(4)', 'numbertitle','off'); hold on;
Sum = zeros(size(t));
for m = 1:50
    f = zeros(size(t));
    for n = 1:m
        temp = sin(n*t)./n;
        f = f + temp;
    end
    Sum = Sum + f;
end
F = Sum/50;
plot(t,F,'r');
for m = 51:100
    f = zeros(size(t));
    for n = 1:m
        temp = sin(n*t)./n;
        f = f + temp;
    end
    Sum = Sum + f;
end
F = Sum/100;
plot(t,F,'g');
for m = 101:200
    f = zeros(size(t));
    for n = 1:m
        temp = sin(n*t)./n;
        f = f + temp;
    end
    Sum = Sum + f;
end
F = Sum/200;
plot(t,F,'b');
legend('N = 50', 'N = 100', 'N = 200'); title('Comparison Fn'); xlabel('t'); ylabel('y');