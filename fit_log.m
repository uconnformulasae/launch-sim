function err = sim_and_score(x)
    in = Simulink.SimulationInput('model');
    
    vehicle.tire_mu_peak=x(1);
    vehicle.tire_kappa_peak = x(2); % ratio, slip ratio at which peak tractive force is generated [high uncertainty]
    vehicle.tire_falloff_tail = x(3); % ratio, force at large slip divided by peak force [high uncertainty]

    params_suspension;
    params_powertrain;
    params_tires;
    params_aero;
    params_sensors;
    
    vehicle = Simulink.Parameter(vehicle);
    vehicle.DataType = 'struct';

    in = in.setVariable('vehicle', vehicle);

    out = sim(in);
    
    RPM_sim = out.recordout.get('RPM_sim').Values.Data;
    RPM_log = out.recordout.get('RPM_log').Values.Data;
    err = (RPM_log - RPM_sim);
end

function err = score()
    in = Simulink.SimulationInput('model');
    
    params_suspension;
    params_powertrain;
    params_tires;
    params_aero;
    params_sensors;
    
    vehicle = Simulink.Parameter(vehicle);
    vehicle.DataType = 'struct';
    
    in = in.setVariable('vehicle', vehicle);
    
    out = sim(in);
    
    RPM_sim = out.recordout.get('RPM_sim').Values.Data;
    RPM_log = out.recordout.get('RPM_log').Values.Data;
    err = (RPM_log - RPM_sim);
end


options = optimoptions('lsqnonlin', 'Display', 'iter', 'StepTolerance', 0.0002);
%lsqnonlin(@(x) sim_and_score(x), [1.45, 0.12, 0.8], [0.9, 0.07, 0.5], [1.9 0.16, 0.9], options)
sqrt(mean(score().^2))