% TODO: Rescale Pacejka coefficients with lateral TTC data

vehicle.tire_mu_scale = 0.95; % ratio, peak grip as a multiplier on the nominal curve [uncertain] sweep 0.75-1.15
vehicle.tire_slip_scale = 1.1; % ratio, stretches slip axis moving peak slip and initial slope together [uncertain] sweep 0.6-1.6
vehicle.tire_force_falloff = 0.7; % ratio, force at large slip divided by peak force [uncertain] sweep 0.9-0.5
vehicle.tire_load_sens = 0; % ratio/Nm, drop in mu per Nm of Fz above nominal Fz [uncertain] TODO: find from lateral TTC data
vehicle.tire_lr_mismatch = 0.0025; % unitless, mismatch in grip between left/right tire [uncertain] sweep 0-0.05
vehicle.tire_relaxation_length = 0.15; % m, the relaxation length of the tires [uncertain]

% fit to LC0 18x6 TTC drive/brake data at 12psi by Magic Formula Tyre Tool
vehicle.pacejka_B = 12.2; % unitless, stiffness coefficient
vehicle.pacejka_C = 1.5; % unitless shape coefficient
vehicle.pacejka_D = 2481; % Nm, peak force
vehicle.pacejka_E = 0; % unitless, curvature coefficient