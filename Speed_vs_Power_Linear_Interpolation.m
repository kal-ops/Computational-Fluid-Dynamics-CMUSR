clc;
clear;

% Given data
Speed = [2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5];
Power = [92.0529, 412.0853, 1921.0453, 7591.6713, 11673.4111, 14551.8262, 42245.7334, 100569.0316, 143290.1804, 149030.9966, 168047.3830, 219704.3976, 383462.1894, 532348.0732, 660868.0155, 806261.4115];

% Speed values to predict using interpolation
New_Speed = linspace(min(Speed), max(Speed), 200);  % 200 points for smooth interpolation

% Linear Interpolation
Predicted_Power = interp1(Speed, Power, New_Speed, 'linear');

% Plotting the data
figure;
plot(New_Speed, Predicted_Power, '-b', 'LineWidth', 1.5);  % Interpolated line
hold on;
plot(Speed, Power, 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');  % Original points

% Adding labels and title
xlabel('Speed (m/s)');
ylabel('Power (W)');
title('Speed vs. Power (Linear Interpolation)');
grid on;

% Enabling Data Cursor Mode
datacursormode on;