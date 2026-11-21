vehicle.tire_mu_peak=1.52; % ratio, mu at optimal slip ratio [high uncertainty]
vehicle.tire_kappa_peak=0.12; % ratio, slip ratio at which peak tractive force is generated [high uncertainty]
vehicle.tire_falloff_tail = 0.73; % ratio, force at large slip divided by peak force [high uncertainty]
vehicle.tire_load_sens=0.2; % ratio, drop in mu per unit of normalized load [high uncertainty]
vehicle.tire_lr_mismatch = 0.0; % ratio, mismatch in grip between left/right tire [moderate uncertainty]
vehicle.tire_relaxation_length=0.15; % m, relaxation length of the tires that determines lag on force output [high uncertainty]
vehicle.tire_nominal_Fz=850; % N, nominal normal force on tire
vehicle.tire_curvature_coefficient = 0.9; % unitless, curvature coefficient [high uncertainty]
vehicle.open_diff = false;

function [C, B, E] = compute_mf(vehicle)
    tail = max(min(vehicle.tire_falloff_tail, 0.999), 0.001);
    C = 2.0 - (2.0 / pi) * asin(tail);
    T = tan(pi / (2.0 * C));
    
    E = min(vehicle.tire_curvature_coefficient, 0.99);
    X = T;
    for i = 1:50
        g  = X - E * (X - atan(X)) - T;
        dg = 1.0 - E * (1.0 - 1.0 / (1.0 + X^2));
        dX = g / dg;
        X  = X - dX;
        if abs(dX) < 1e-12, break; end
    end

    B = X / vehicle.tire_kappa_peak;
end

[vehicle.tire_C, vehicle.tire_B, vehicle.tire_E] = compute_mf(vehicle);
