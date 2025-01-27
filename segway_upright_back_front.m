clc;
clear;

% Define the file path
filePath = 'C:\Users\stefd\Downloads\EE\Module_6\Project\Chapter7\data_files\slow_test_sensor_fusion_upright_to_back_to_front_in_radians_new.csv';

% Read the CSV file into a table
data = readtable(filePath);

% Extract the variables
time = data.time;
angle = data.angle;


% Plot angle over time
figure;
plot(time, angle, 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Angle (rad)');
title('Angle Over Time');
grid on;
