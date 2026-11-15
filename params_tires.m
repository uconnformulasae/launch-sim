vehicle.tire_mu_peak=1.45; % ratio, mu at optimal slip ratio [high uncertainty]
vehicle.tire_kappa_peak=0.12; % ratio, slip ratio at which peak tractive force is generated [high uncertainty]
vehicle.tire_falloff_tail = 0.8; % ratio, force at large slip divided by peak force [high uncertainty]
vehicle.tire_load_sens=0.2; % ratio, drop in mu per unit of normalized load [high uncertainty]
vehicle.tire_lr_mismatch = 0.0; % ratio, mismatch in grip between left/right tire [moderate uncertainty]
vehicle.tire_relaxation_length=0.15; % m, relaxation length of the tires that determines lag on force output [high uncertainty]

% fit to LC0 18x6 TTC drive/brake data at ~12psi by Magic Formula Tyre Tool
vehicle.pacejka_E = 0; % unitless, curvature coefficient [high uncertainty]
vehicle.tire_nominal_Fz=1050; % N, nominal normal force on tire