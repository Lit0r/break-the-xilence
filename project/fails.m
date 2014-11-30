Fs = 4800000 / 8
Q = 4


%K = tan(pi * f / Fs)
K = pi * f / Fs
%K = 3 * f / Fs
%K = single(127 / (2^14))
%K = 0
K_div_Q = K/Q
K_2 = K^2
ino = 1 + K_div_Q + K_2
b0 = K_2 / ino
b1 = 2 * b0
b2 = b0

a1 = 2 * (K_2 - 1) / ino
a2 = (1 - K_div_Q + K_2) / ino
%a1 = -2.0
%a2 = 1.0


freqz(single([b0 b1 b2]), single([1 a1 a2]), 2^19, Fs)
ax = findall(gcf, 'Type', 'axes');
set(ax, 'XScale', 'log');
set(ax, 'XLim', [1 Fs/2]);
set(ax, 'YLim', [-100 50]);
