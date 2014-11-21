Fs = 4800000
Q = 500


K = tan(pi * f / Fs)
ino = 1 + K/Q + K^2
b0 = K^2 / ino
b1 = 2 * b0
b2 = b0

a1 = 2 * (K^2 - 1) / ino
a2 = (1 - K/Q + K^2) / ino
%a1 = -2.0
%a2 = 1.0


freqz([b0 b1 b2], [1 a1 a2], 2^19, Fs)
ax = findall(gcf, 'Type', 'axes');
set(ax, 'XScale', 'log');
set(ax, 'XLim', [1 Fs/2]);
set(ax, 'YLim', [-100 10]);