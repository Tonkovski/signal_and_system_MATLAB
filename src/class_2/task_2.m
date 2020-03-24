%% Signal & System Experiment - Class 2 - Task 2
pace = 0.01;    % Determines accuracy, reduce to increase sampling rate.
figure('name','Task 2', 'numbertitle','off');
sys = tf([2, 1],[1, 4, 3]);

% Fig 2.(1)
t = 0:pace:10;
h = impulse(sys,t);
subplot(311); plot(t,h); title('Fig 2.(1) Impulse Response'); xlabel('t'); ylabel('h');

% Fig 2.(2)
t = 0:pace:10;
g = step(sys,t);
subplot(312); plot(t,g); title('Fig 2.(2) Step Response'); xlabel('t'); ylabel('g');

% Fig 2.(3)
t = 0:pace:10;
f = 4*sin(2*pi*t);
y = lsim(sys,f,t);
subplot(313); plot(t,y); title('Fig 2.(3) Function Zero State Response'); xlabel('t'); ylabel('g');