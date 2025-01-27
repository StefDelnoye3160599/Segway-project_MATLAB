clc;
clear;

% Define the file path
filePath = 'C:\Users\stefd\Downloads\EE\Module_6\Project\Chapter7\data_files\simulation\simulation_control_V_in.csv';

% Read the CSV file into a table
data = readtable(filePath);

% Extract variables
time = data.time; % Time column
input_voltage = data.input_voltage; % Input voltage column




% Calculate the absolute value of input_voltage
abs_voltage = abs(input_voltage);

% Find where the absolute value exceeds 24V
exceed_indices = find(abs_voltage > 24);

% Number of times input voltage exceeds ±24V
num_exceeds = length(exceed_indices);

% Calculate maximum and minimum voltage
max_voltage = max(input_voltage);
min_voltage = min(input_voltage);

% Display results
disp(['Number of times |input_voltage| > 24V: ', num2str(num_exceeds)]);
disp(['Maximum voltage: ', num2str(max_voltage), ' V']);
disp(['Minimum voltage: ', num2str(min_voltage), ' V']);

% Plot input voltage with regions exceeding ±24V highlighted
figure;
plot(time, input_voltage, 'b', 'LineWidth', 1.5); % Original signal
hold on;
plot(time(abs_voltage > 24), input_voltage(abs_voltage > 24), 'ro', 'MarkerSize', 5); % Highlight exceeding regions
xlabel('Time (s)');
ylabel('Input Voltage (V)');
title('Input Voltage Over Time');
legend('Input Voltage', '|Voltage| > 24V');
grid on;

% Histogram of input_voltage
figure;
histogram(input_voltage, 50); % 50 bins
xlabel('Input Voltage (V)');
ylabel('Frequency');
title('Histogram of Input Voltage');
grid on;
