vehicle.encoder_ppr = 36; % count, number of teeth on front wheel encoders. subject to change
vehicle.resolver_rpm_resolution = 1; % count, smallest RPM resolver can report
vehicle.resolver_filter_tau = 0.001; % s, time constant of filtering on reported resolver RPM [high uncertainty]
vehicle.accel_bias_mean = 0.11*9.81; % m/s^2, mean of the per-run random constant accelerometer bias [minor uncertainty]
vehicle.accel_bias_stddev = 0.2; % m/s^2, stddev of the per-run random constant accelerometer bias [minor uncertainty]
vehicle.accel_reading_stddev = 0.01; % m/s^2, stddev of the accelerometer reading noise [moderate uncertainty]

n = 2;          % Filter order
wc = 2*pi*12;   % Cutoff frequency in rad/s (e.g., 50 Hz)

[vehicle.butter_b, vehicle.butter_a] = butter(n, wc, 'low', 's');