vehicle.encoder_ppr = 36; % count, number of teeth on front wheel encoders
vehicle.resolver_rpm_resolution = 1; % count, smallest RPM resolver can report
vehicle.resolver_filter_tau = 0.001; % s, time constant of filtering on reported resolver RPM [uncertain]
vehicle.accel_bias_mean = 1; % m/s^2, mean of the per-run random constant accelerometer bias [uncertain]
vehicle.accel_bias_stddev = 0.2; % m/s^2, stddev of the per-run random constant accelerometer bias [uncertain]
vehicle.accel_reading_stddev = 0.01; % m/s^2, stddev of the accelerometer reading noise [uncertain]