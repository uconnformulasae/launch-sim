vehicle.downforce_distribution_front=0.61; % ratio, The percentage of downforce distributed to the front
vehicle.downforce_distribution_rear=1-vehicle.downforce_distribution_front; % ratio, The percentage of downforce distributed to the rear
vehicle.drag_coefficient = 1.502; % m^2, drag coefficient equivalent to CdA
vehicle.downforce_coefficient = 2.18; % m^2, downforce coefficient equivalent to -ClA
vehicle.air_density=1.225; % kg/m^3, density of air at sea level
vehicle.frontal_area=1; % m^2, the frontal area (implies drag and downforce coeff equal to CdA, -ClA)