% TODO: Rescale Pacejka coefficients with lateral TTC data, reevaluate fit
% at more reasonable nominal load

vehicle.tire_mu_peak=1.45; % ratio, mu at optimal slip ratio [sweep]
vehicle.tire_kappa_peak=0.12; % ratio, slip ratio at which peak tractive force is generated [sweep]
vehicle.tire_falloff_tail = 0.6; % ratio, force at large slip divided by peak force [sweep]
vehicle.tire_load_sens=0.2; % ratio, drop in mu per unit of normalized load: find from lateral TTC data -PDX2/PDX1
vehicle.tire_lr_mismatch = 0.0; % ratio, mismatch in grip between left/right tire [sweep]

% fit to LC0 18x6 TTC drive/brake data at ~12psi by Magic Formula Tyre Tool
vehicle.pacejka_E = 0; % unitless, curvature coefficient
vehicle.tire_nominal_Fz=1500; % N, nominal normal force on tire