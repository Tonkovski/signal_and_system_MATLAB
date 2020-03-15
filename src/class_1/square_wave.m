function Sum = square_wave(n)
    t = linspace(0,4*pi,1001);
    Sum = zeros(1,1001);
    for k = 1:n
        temp = sin((2.*k - 1).*t)./(2.*k - 1);
        Sum = Sum + temp;
    end
end