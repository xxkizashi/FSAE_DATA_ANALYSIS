clear;
clc;

t = 1000 * 60;
xmin = 10;
xmax = 5;

% xmin = 3.5;
% xmax = 5;

% File Select
type SUGO_20191208_SANO01.txt;
fileID = fopen("SUGO_20191208_SANO01.txt", "r");
formatSpec = "%d %f %f %f %f %f %f %f %f";
sizeA = [9 Inf];
A = fscanf(fileID, formatSpec, sizeA);
A = A';
time = A(:, 1)/t  - xmin;
% Moving Average
A_mean = movmean(A(:, 2:end), 3, 1);

% Acceralation
subplot(2, 1, 1);
plot(time, A_mean(:, 1), 'r-', time, A_mean(:, 2), 'b-', time, A_mean(:, 3), 'k-');
legend({'Acc X', 'Acc Y', 'Acc Z'}, 'location', 'best');
hold on;
xlim([0 xmax]);
title('Acceralation')
xlabel('Time[min]', 'FontSize', 18, 'Interpreter', 'tex');
ylabel('Acceralation [G]', 'FontSize', 18, 'Interpreter', 'tex');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 8);
xgca=get(gca, 'xlabel');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 16);
ax.YAxisLocation = 'origin';  % setting y axis location to origin
grid on;

% Gyro
subplot(2, 1, 2);
plot(time, A_mean(:, 4), 'r-', time, A_mean(:, 5), 'b-', time, A_mean(:, 6), 'k-');
legend({'Gyro X', 'Gyro Y', 'Gyro Z'}, 'location', 'best');
hold on;
xlim([0 xmax]);
title('Gyro')
xlabel('Time[min]', 'FontSize', 18, 'Interpreter', 'tex');
ylabel('Gyro [deg/s]', 'FontSize', 18, 'Interpreter', 'tex');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 8);
xgca=get(gca, 'xlabel');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 16);
ax.YAxisLocation = 'origin';  % setting y axis location to origin
grid on;