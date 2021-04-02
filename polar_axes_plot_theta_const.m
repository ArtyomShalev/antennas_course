%-----------Plot config-------------------------------
set(0,'DefaultLineLineWidth',2)
%-----------------------------------------------------

clear all
DDs = readtable('vibr_theta_custom.txt');   %файл искуственный и содержит 2 колонки
cell=table2array(DDs);
Mag = cell(1:end, 2);

pax = polaraxes;
theta([1:360])=[0:1:359];
polarplot(pi*theta/180, Mag);
pax.ThetaZeroLocation='top';
title('Abs Directivity (Theta = 90)')

hold on

DDs = readtable('coax_theta.txt');
cell=table2array(DDs);
Mag = cell(1:end, 2);
polarplot(pi*theta/180, Mag);


DDs = readtable('st_theta.txt');
cell=table2array(DDs);
Mag = cell(1:end, 2);
polarplot(pi*theta/180, Mag, '--');

legend('Dipole with discrete port','Dipole with coaxial', 'Dipole with quater wave choke'); 