theta_degrees = linspace(-90, 90, 1000);
theta_radians = theta_degrees*pi/180;
A = 1;
set(0,'DefaultLineLineWidth',2)
RP = sin(theta_radians);
short_vibrator_E = A*RP;
plot(theta_degrees, abs(short_vibrator_E));
title('Radiation patterns of dipole antennas');
xlabel('Theta, [degrees]')
ylabel('|E|');
xlim([-90 90]);
grid on;
hold on;

RP = (cos(pi./2*cos(theta_radians))./sin(theta_radians));
half_wavelength_vibrator_E = A*RP;
plot(theta_degrees, abs(half_wavelength_vibrator_E));
hold on;

RP = 2.*(cos(pi./2*cos(theta_radians))).^2 ./ sin(theta_radians);
one_wavelength_vibrator_E = A*RP;
plot(theta_degrees, abs(one_wavelength_vibrator_E)/max(one_wavelength_vibrator_E));
hold on;

RP = cos(3*pi/2.*cos(theta_radians)) ./ sin(theta_radians);
one_and_half_wavelegth_vibrator_E = A*RP;
plot(theta_degrees, abs(one_and_half_wavelegth_vibrator_E)/max(one_and_half_wavelegth_vibrator_E));

legend('Короткий вибратор', 'Полуволновый вибратор', 'Одноволновый вибратор', 'Полутороволновый вибратор', 'Location', 'northoutside', 'FontSize', 12);
