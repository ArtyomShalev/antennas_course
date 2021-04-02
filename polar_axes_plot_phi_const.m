%-----------Plot config-------------------------------
set(0,'DefaultLineLineWidth',2)
%----------------------------------------------------

clear all
DDs = readtable('vibr_phi.txt');
cell=table2array(DDs);
f_cell_splitted = split(cell);
f_cell_splitted = str2double(f_cell_splitted);
Mag = f_cell_splitted(1:end, 3);

for i=1:length(Mag)
    if(Mag(i)<-20)
        Mag(i)=-20;
    end
end

Mag_n = Mag./max(Mag);

pax = polaraxes;
theta([1:360])=[0:1:359];
polarplot(pi*theta/180, Mag_n);
pax.ThetaZeroLocation='top';
rlim([-8 2])   
title('Abs Directivity (Phi = 0)')

hold on

DDs = readtable('coax_phi.txt');
cell=table2array(DDs);
f_cell_splitted = split(cell);
f_cell_splitted = str2double(f_cell_splitted);
Mag = f_cell_splitted(1:end, 3);

% for i=1:length(Mag)
%     if(Mag(i)<-20)
%         Mag(i)=-20;
%     end
% end

Mag_n = Mag./max(Mag);

polarplot(pi*theta/180, Mag_n);
rlim([-8 2]) 

DDs = readtable('coax_st_2-1_phi.txt');
cell=table2array(DDs);
f_cell_splitted = split(cell);
f_cell_splitted = str2double(f_cell_splitted);
Mag = f_cell_splitted(1:end, 3);

for i=1:length(Mag)
    if(Mag(i)<-20)
        Mag(i)=-20;
    end
end

Mag_n = Mag./max(Mag);

polarplot(pi*theta/180, Mag_n, '--');
rlim([-8 2]) 

legend('Dipole with discrete port','Dipole with coaxial', 'Dipole with quater wave choke'); 