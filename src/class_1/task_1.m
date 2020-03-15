%% Signal & System Experiment - Class 1 - Task 1
pace = 0.1;    % Determines accuracy, reduce to increase sampling rate.
figure('name','Task 1', 'numbertitle','off');

% Figure 1.(1)
t = -1:pace:10;
f1 = stepfun(t,0);
subplot(321); plot(t,f1); title('Fig 1.(1)'); xlabel('t'); ylabel('f1');

% Figure 1.(2)
t = 0:pace:10;
f2 = 4.*exp(1).^(-0.5.*t).*cos(pi.*t);
subplot(322); plot(t,f2); title('Fig 1.(2)'); xlabel('t'); ylabel('f2');

% Figure 1.(3)
t = -10:pace:10;
f3 = rectpuls(t,2) + rectpuls(t,4);
subplot(323); plot(t,f3); title('Fig 1.(3)'); xlabel('t'); ylabel('f3');

% Figure 1.(4)
k = -10:10;
f4 = stepfun(k,-2) - stepfun(k,5);
subplot(324); stem(k,f4); title('Fig 1.(4)'); xlabel('k'); ylabel('f4');

% Figure 1.(5)
f5 = 7.*(0.6).^k.*cos(0.9.*pi.*k);
subplot(325); stem(k,f5); title('Fig 1.(5)'); xlabel('k'); ylabel('f5');

% Figure 1.(6)
t = -10:pace:10;
f6 = sinc(t./pi);
subplot(326); plot(t,f6); title('Fig 1.(6)'); xlabel('t'); ylabel('f6');