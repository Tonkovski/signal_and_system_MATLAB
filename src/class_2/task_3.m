%% Signal & System Experiment - Class 2 - Task 3
figure('name','Task 3', 'numbertitle','off');
% Fig 3.(1)
y=2*wgn(1,500,0);    % Generates WGN.
subplot(211); plot(y); title('Fig 3.(1) WGN');

% Fig 3.(2)
n=length(y);
[acf, lags, bounds] = autocorr(y,n-1);
subplot(212); plot(lags,acf); title('Fig 3.(2) Autocorrelation Function by "autocorr"');