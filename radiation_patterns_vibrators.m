%-----------Plot config-------------------------------
set(0,'DefaultLineLineWidth',2)
%-----------------------------------------------------

theta_degrees = linspace(-90, 90, 1000); 
theta_radians = theta_degrees*pi/180;
A = 1;

%------short vibrator---------------------------------
RP = sin(theta_radians); %RP - radiation pattern
short_vibrator_E = A*RP;
plot(theta_degrees, abs(short_vibrator_E));
hold on;  % that needed to draw all RP at one figure
%-----------------------------------------------------

%------half wavelength vibrator---------------------------------
RP = (cos(pi/2*cos(theta_radians))./sin(theta_radians));
half_wavelength_vibrator_E = A*RP;
plot(theta_degrees, abs(half_wavelength_vibrator_E));
hold on;
%-----------------------------------------------------

%------one wavelength vibrator---------------------------------
RP = 2*(cos(pi/2*cos(theta_radians))).^2 ./ sin(theta_radians);
one_wavelength_vibrator_E = A*RP;
plot(theta_degrees, abs(one_wavelength_vibrator_E)/max(one_wavelength_vibrator_E));
hold on;
%-----------------------------------------------------

%------one and half wavelength vibrator---------------------------------
RP = cos(3*pi/2*cos(theta_radians)) ./ sin(theta_radians);
one_and_half_wavelegth_vibrator_E = A*RP;
plot(theta_degrees, abs(one_and_half_wavelegth_vibrator_E)/max(one_and_half_wavelegth_vibrator_E));
%-----------------------------------------------------

%-------------Plot decoration-------------------------
title('Radiation patterns of dipole antennas');
xlabel('Theta, [degrees]')
ylabel('|E|');
xlim([-90 90]);
grid on;
legend('Короткий вибратор', 'Полуволновый вибратор', 'Одноволновый вибратор', 'Полутороволновый вибратор', 'Location', 'northoutside', 'FontSize', 12);
%-----------------------------------------------------

