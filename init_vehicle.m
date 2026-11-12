% Initialize the vehicle parameters used for the simulation
clear;
params_suspension;
params_powertrain;
params_tires;
params_sensors;

vehicle = Simulink.Parameter(vehicle);
vehicle.DataType = 'struct';