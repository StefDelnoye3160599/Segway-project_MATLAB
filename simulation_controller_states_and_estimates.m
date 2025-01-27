clc;
clear;

% Define the file path
filePath = 'C:\Users\stefd\Downloads\EE\Module_6\Project\Chapter7\data_files\simulation\simulation_controller_states&estimates.csv';

% Read the CSV file into a table
data = readtable(filePath);

% Extract variables
time = data.time;
angle = data.angle;
angle_est = data.angle_est;
p_body = data.p_body;
p_body_est = data.p_body_est;
p_wheel = data.p_wheel;
p_wheel_est = data.p_wheel_est;

% Plot angle and estimated angle
figure;
plot(time, angle, 'g', 'LineWidth', 1.5); % Green for actual values
hold on;
plot(time, angle_est, 'r--', 'LineWidth', 1.5); % Red for estimations
xlabel('Time (s)');
ylabel('Angle (rad)');
title('Angle and Estimated Angle Over Time');
legend('Angle', 'Estimated Angle');
grid on;

% Plot p_body and estimated p_body (real state on top)
figure;
plot(time, p_body_est, 'r--', 'LineWidth', 1.5); % Red for estimations
hold on;
plot(time, p_body, 'g', 'LineWidth', 1.5); % Green for actual values
xlabel('Time (s)');
ylabel('Body Angular Momentum (kg·m^2/s)');
title('Body Angular Momentum (p_{body}) and Estimated p_{body} Over Time');
legend('Estimated p_{body}', 'p_{body}');
grid on;

% Plot p_wheel and estimated p_wheel
figure;
plot(time, p_wheel, 'g', 'LineWidth', 1.5); % Green for actual values
hold on;
plot(time, p_wheel_est, 'r--', 'LineWidth', 1.5); % Red for estimations
xlabel('Time (s)');
ylabel('Wheel Angular Momentum (kg·m^2/s)');
title('Wheel Angular Momentum (p_{wheel}) and Estimated p_{wheel} Over Time');
legend('p_{wheel}', 'Estimated p_{wheel}');
grid on;

% Read the CSV file into a table
data = readtable(filePath);

% Extract variables
time = data.time;
angle = data.angle;
angle_est = data.angle_est;
p_body = data.p_body;
p_body_est = data.p_body_est;
p_wheel = data.p_wheel;
p_wheel_est = data.p_wheel_est;

% Plot angle and estimated angle
figure;
plot(time, angle_est, 'r--', 'LineWidth', 1.5); % Red for estimations
hold on;
plot(time, angle, 'g', 'LineWidth', 1.5); % Green for actual values
xlabel('Time (s)');
ylabel('Angle (rad)');
title('Angle and Estimated Angle Over Time');
legend('Estimated Angle', 'Angle');
grid on;

% Plot p_body and estimated p_body (with reversed order)
figure;
plot(time, p_body_est, 'r--', 'LineWidth', 1.5); % Red for estimations
hold on;
plot(time, p_body, 'g', 'LineWidth', 1.5); % Green for actual values
xlabel('Time (s)');
ylabel('Body Angular Momentum (kg·m^2/s)');
title('Body Angular Momentum (p_{body}) and Estimated p_{body} Over Time');
legend('Estimated p_{body}', 'p_{body}');
grid on;

% Plot p_wheel and estimated p_wheel
figure;
plot(time, p_wheel_est, 'r--', 'LineWidth', 1.5); % Red for estimations
hold on;
plot(time, p_wheel, 'g', 'LineWidth', 1.5); % Green for actual values
xlabel('Time (s)');
ylabel('Wheel Angular Momentum (kg·m^2/s)');
title('Wheel Angular Momentum (p_{wheel}) and Estimated p_{wheel} Over Time');
legend('Estimated p_{wheel}', 'p_{wheel}');
grid on;
