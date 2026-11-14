vehicle.total_mass = 278; % kg, car and driver [uncertain]
vehicle.cg_height = 0.2794; % m, center of gravity height
vehicle.rolling_resistance = 0.015; % unitless, rolling resistance coefficient
vehicle.frame_wheelbase = 1.549; % m, distance from front to rear wheels
vehicle.weight_distribution_front = 0.53; % ratio, front weight percentage
vehicle.weight_distribution_rear = 1 - vehicle.weight_distribution_front; % ratio, rear weight percentage
vehicle.gravity_acceleration = 9.81; %m/s^2, gravity on a flat surface
vehicle.weight_transfer_tau = 0.001; % s, the time it takes for longitudinal weight transfer to settle [uncertain]
vehicle.kappa_max=3; % ratio, max slip ratio we expect to see in heavy wheelspin

