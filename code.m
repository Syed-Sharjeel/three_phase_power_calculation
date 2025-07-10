close all; clear all; clc;

% Given Parameters
% Source is Delta Connected
Z_line = 2 + 4i;
Z_wye = 30 + 40i;
Z_delta = 60 - 45i;
V_line = 207.85;
f = 60;
w = 2 * pi * f;        
t = 0:0.0001:0.03;

% Transforming Delta Connected Load into Wye Connected Load
Z_wye_transformed = Z_delta / 3;

% Phase Voltage
V_Phase = V_line / sqrt(3);
V_a_plot = V_Phase * sin(w*t);
V_b_plot = V_Phase * sin((w*t)-(2*pi/3));
V_c_plot = V_Phase * sin((w*t)+(2*pi/3));

% Total Impedance
Z_parallel = (Z_wye * Z_wye_transformed) / (Z_wye + Z_wye_transformed);
Z_total = Z_parallel + Z_line;

% Phase Currents
I_a = V_Phase / Z_total;
I_b = V_Phase * (exp(1j * (-2*pi/3))) / Z_total;
I_c = V_Phase * (exp(1j * (2*pi/3))) / Z_total;
I_a_plot = abs(I_a) * (sin((w*t) + angle(I_a)));
I_b_plot = abs(I_b) * (sin((w*t) + angle(I_b)));
I_c_plot = abs(I_c) * (sin((w*t) + angle(I_c)));

% Power Calculations
P = 3 * abs(I_a)^2 * real(Z_total);
Q = 3 * abs(I_b)^2 * imag(Z_total);

% Phase Current Plot
figure;
plot(t,I_a_plot, t,I_b_plot, t,I_c_plot);
title('Phase Currents');
xlabel('Time');
ylabel('Phase Current');
grid on;

% Phase Voltage Plot
figure;
plot(t,V_a_plot, t,V_b_plot, t,V_c_plot);
title('Phase Voltage');
xlabel('Time');
ylabel('Phase Voltage');
grid on;

% Display Result
fprintf('Phase Voltage: %.2fV', V_Phase);
fprintf('\nPhase Currents: Ia: %.2fA, Ib: %.2fA, Ic: %.2fA', I_a, abs(I_b), abs(I_c));
fprintf('\nReal Power: %.2fW', P);
fprintf('\nReactive Power: %.2fVAR', Q);
