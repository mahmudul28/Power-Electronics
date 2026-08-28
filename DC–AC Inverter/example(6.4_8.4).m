% =========================================================================
% Power Electronics - Single-Phase Full-Bridge Inverter (RLC Load)
% =========================================================================

clear; clc; close all;

% --- 1. Circuit Parameters ---
Vs = 220;              % DC Supply Voltage (V)
f = 60;                % Fundamental Frequency (Hz)
w = 2*pi*f;            % Angular Frequency (rad/s)
R = 10;                % Resistance (Ohms)
L = 31.5e-3;           % Inductance (H)
C = 112e-6;            % Capacitance (F)

% --- 2. Time Vector ---
T = 1/f;               % Time period for one full cycle
t = linspace(0, T, 2000); % High resolution time vector

% --- 3. Harmonic Calculations (n = 1, 3, 5, 7) ---
n = [1, 3, 5, 7];
i_n = zeros(length(n), length(t)); % Matrix to store each harmonic current

for k = 1:length(n)
    nk = n(k);
    
    % Impedance calculations
    XL = nk * w * L;
    XC = 1 / (nk * w * C);
    Z = sqrt(R^2 + (XL - XC)^2);
    theta = atan((XL - XC) / R);
    
    % Peak Voltage and Current for the n-th harmonic
    V_peak = (4 * Vs) / (nk * pi);
    I_peak = V_peak / Z;
    
    % Instantaneous Current Equation
    i_n(k, :) = I_peak * sin(nk * w * t - theta);
end

% Extract specific currents
i_fund = i_n(1, :);            % Fundamental current
i_total = sum(i_n, 1);         % Total instantaneous current i_o(t)

% Create a reference Output Voltage square wave (scaled for visual plotting)
v_o_scaled = (Vs/10) * square(w*t + eps); 

% --- 4. Calculate Conduction Times (Based on Current Leading Voltage) ---
% Current leads voltage by 49.73 degrees (0.8679 rad)
theta_1 = atan((w*L - 1/(w*C)) / R); 
t_zero_cross = (pi - abs(theta_1)) / w; 

t1 = t_zero_cross;       % Current crosses 0 (Q1, Q2 turn off, D1, D2 turn on)
t2 = T/2;                % Voltage flips negative (D1, D2 turn off, Q3, Q4 turn on)
t3 = t2 + t_zero_cross;  % Current crosses 0 (Q3, Q4 turn off, D3, D4 turn on)
t4 = T;                  % End of cycle

% =========================================================================
% FIGURE 1: Fundamental Current & Conduction Intervals (Part g)
% =========================================================================
fig1 = figure('Name', 'Fundamental Current & Conduction', 'Color', 'w', 'Position', [100, 100, 900, 500]);
hold on; grid on;

% Plot shading for conduction intervals
% Two-tone, low-saturation palette: cool steel-blue for the positive half
% (Q1/Q2, D1/D2) and warm amber for the negative half (Q3/Q4, D3/D4).
% Diode intervals use a lighter tint of the same hue as their switch pair,
% so related states read as a family instead of four unrelated colours.
y_lim = [-25, 25];
col_pos_sw   = [0.16 0.35 0.60];   % steel blue  - Q1,Q2 ON
col_pos_diode= [0.55 0.70 0.88];   % pale blue   - D1,D2 ON
col_neg_sw   = [0.72 0.42 0.13];   % burnt amber - Q3,Q4 ON
col_neg_diode= [0.90 0.72 0.52];   % pale amber  - D3,D4 ON

patch([0 t1 t1 0],   [y_lim(1) y_lim(1) y_lim(2) y_lim(2)], col_pos_sw,    'FaceAlpha', 0.18, 'EdgeColor', 'none', 'DisplayName', 'Q1, Q2 ON');
patch([t1 t2 t2 t1], [y_lim(1) y_lim(1) y_lim(2) y_lim(2)], col_pos_diode, 'FaceAlpha', 0.18, 'EdgeColor', 'none', 'DisplayName', 'D1, D2 ON');
patch([t2 t3 t3 t2], [y_lim(1) y_lim(1) y_lim(2) y_lim(2)], col_neg_sw,    'FaceAlpha', 0.18, 'EdgeColor', 'none', 'DisplayName', 'Q3, Q4 ON');
patch([t3 t4 t4 t3], [y_lim(1) y_lim(1) y_lim(2) y_lim(2)], col_neg_diode, 'FaceAlpha', 0.18, 'EdgeColor', 'none', 'DisplayName', 'D3, D4 ON');

% Add textual labels for the intervals
text(t1/2, 22, 'Q_1, Q_2 ON', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 11);
text((t1+t2)/2, -22, 'D_1, D_2 ON', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 11);
text((t2+t3)/2, -22, 'Q_3, Q_4 ON', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 11);
text((t3+t4)/2, 22, 'D_3, D_4 ON', 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 11);

% Mark the actual switching-instant time values (ms) on the plot itself,
% so the conduction boundaries aren't just visual - they're numeric too.
xline(t1, ':', sprintf('t_1 = %.3f ms', t1*1e3), ...
    'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'left', ...
    'Color', [0.35 0.35 0.35], 'FontSize', 9, 'HandleVisibility', 'off');
xline(t2, ':', sprintf('t_2 = %.3f ms', t2*1e3), ...
    'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'left', ...
    'Color', [0.35 0.35 0.35], 'FontSize', 9, 'HandleVisibility', 'off');
xline(t3, ':', sprintf('t_3 = %.3f ms', t3*1e3), ...
    'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'left', ...
    'Color', [0.35 0.35 0.35], 'FontSize', 9, 'HandleVisibility', 'off');

% Plot the waveforms
plot(t, v_o_scaled, 'k--', 'LineWidth', 1.5, 'DisplayName', 'Output Voltage v_o(t) [Scaled]');
plot(t, i_fund, 'Color', [0.45 0.09 0.68], 'LineWidth', 2.5, 'DisplayName', 'Fundamental Current i_{o1}(t)');

% Short-form label placed directly on the curve, right at its peak, so the
% i_o1(t) notation is legible without having to cross-reference the legend.
[~, i_peak_idx] = max(i_fund);
text(t(i_peak_idx), i_fund(i_peak_idx) + 2, 'i_{o1}(t)', ...
    'Color', [0.45 0.09 0.68], 'FontWeight', 'bold', 'FontSize', 11, ...
    'HorizontalAlignment', 'center');

% Aesthetics
title('ID: 2202156 - Fundamental Load Current & Conduction Intervals', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Time (seconds)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Amplitude (A / V_{scaled})', 'FontSize', 12, 'FontWeight', 'bold');
ylim(y_lim);
xlim([0 T]);
legend('Location', 'northeastoutside');
set(gca, 'FontSize', 11, 'LineWidth', 1.2);

% =========================================================================
% FIGURE 2: Total Current i_o(t) & Harmonics (Teacher's extra requirement)
% =========================================================================
fig2 = figure('Name', 'Total Current & Harmonics', 'Color', 'w', 'Position', [150, 150, 900, 500]);
hold on; grid on;

% Plot individual harmonics
plot(t, i_n(1,:), '--', 'Color', '#0072BD', 'LineWidth', 1.5, 'DisplayName', 'Fundamental (n=1)');
plot(t, i_n(2,:), '-.', 'Color', '#77AC30', 'LineWidth', 1.5, 'DisplayName', '3rd Harmonic (n=3)');
plot(t, i_n(3,:), ':',  'Color', '#EDB120', 'LineWidth', 1.5, 'DisplayName', '5th Harmonic (n=5)');
plot(t, i_n(4,:), '--', 'Color', '#7E2F8E', 'LineWidth', 1.5, 'DisplayName', '7th Harmonic (n=7)');

% Plot total current
plot(t, i_total, '-', 'Color', '#D95319', 'LineWidth', 3, 'DisplayName', 'Total Load Current i_o(t)');

% Short-form label on the total-current curve as well, for consistency with Figure 1
[~, i_tot_peak_idx] = max(i_total);
text(t(i_tot_peak_idx), i_total(i_tot_peak_idx) + 2, 'i_o(t)', ...
    'Color', '#D95319', 'FontWeight', 'bold', 'FontSize', 11, ...
    'HorizontalAlignment', 'center');

% Aesthetics
title('ID: 2202156 - Total Load Current with up to 7th Harmonics', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Time (seconds)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Current (A)', 'FontSize', 12, 'FontWeight', 'bold');
ylim([-25, 25]);
xlim([0 T]);
legend('Location', 'northeastoutside');
set(gca, 'FontSize', 11, 'LineWidth', 1.2);