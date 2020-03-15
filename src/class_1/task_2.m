%% Signal & System Experiment - Class 1 - Task 2
pace = 0.1;    % Determines accuracy, reduce to increase sampling rate.
figure('name','Task 2', 'numbertitle','off');
f3 = @(t) rectpuls(t,2) + rectpuls(t,4);
t0 = -10:pace:10;

% Figure 2.(1)
t = 2.*t0;
f31 = f3(t);
subplot(311); plot(t0,f31); title('Fig 2.(1)'); xlabel('t'); ylabel('f3(2t)');

% Figure 2.(2)
t = 4-2.*t0;
f32 = f3(t);
subplot(312); plot(t0,f32); title('Fig 2.(2)'); xlabel('t'); ylabel('f3(4-2t)');

% Figure 2.(3)
t = t0;
f33 = diff(f3(t));
subplot(313); plot(t0(1:end-1),f33); title('Fig 2.(3)'); xlabel('t'); ylabel("f3'(2t)");