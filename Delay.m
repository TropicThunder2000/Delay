[x,fs]=audioread('VaaVaathi Song Master 2.wav');
delay = 0.2;%seconds
k= round(delay*fs);
b = 0.25;
N=length(x);

for n = 1: N + k
    if n>k && n-k<N
        xd = x(n-k,:);

    else
        xd = [0 0];
    end

    if n<N
        xn = x(n,:);
    else
        xn = [0,0];
    end
    y(n,:) = xn + b*xd;
end

%soundsc(y,fs);

        
