M = 4;
data = randi([0 M-1], 1000, 1);

modulated_data = pskmod(data, M);
scatterplot(rxSig)

fs = 5e4;
fc = 480e3;
symrate = 10e3;

span = 10;
rolloff = 0.25;
pulse_shape = rcosdesign(rolloff, span, fs, 'sqrt');

upsampled_data = upsample(modulated_data, fs);

tx_signal = filter(pulse_shape, 1, upsampled_data);

t = (0:length(tx_signal)-1) / (fs);

plot(t, real(tx_signal));