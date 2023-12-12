clc;clear;close all; 

R_ook = 320;
R_ppm = 320;
R_dppm = 320;
R_dappm = 320;
R_idppm = 320;
R_vcd = 320;
RL1 = 320;
%RL2 = 320;

Rmax = R_ook;
A = 2;
e = 1;
e2 = 4;
n = 2;

x1 = 2;
x2 = 3;
x3 = 4;

F_ook = zeros(1,7);
F_ppm = zeros(1,7);
F_dppm = zeros(1,7);
F_dappm = zeros(1,7);
F_dappm_2 = zeros(1,7);
F_idppm = zeros(1,7);
F_new = zeros(1,7);
F_vcd_dppm1 = zeros(1,7);
F_vcd_dppm2 = zeros(1,7);
F_vcd_dppm3 = zeros(1,7);
F_vcd_dppm4 = zeros(1,7);
F_ofam_1d = zeros(1,7);
F_ofam_1d_2 = zeros(1,7);
F_ofam_3d_1 = zeros(1,7);
F_ofam_3d_2 = zeros(1,7);
F_ofam_3d_ML = zeros(1,7);

P_dppm = zeros(1,7);
P_dappm = zeros(1,7);
P_ofam_3d_ml = zeros(1,7);

for m = 2:8
    F_ook(1,m-1) = R_ook;
    F_ppm(1,m-1) = (R_ppm*m)/(2^m);
    F_dppm(1,m-1) = (2*R_dppm*m)/((2^m)+1);
    F_idppm(1,m-1) = (2*R_idppm*m)/((2^m)+3);
    F_dappm(1,m-1) = (2*A*R_dappm*m)/((2^m)+A);
    F_dappm_2(1,m-1) = (2*4*R_dappm*m)/((2^m)+4);
    
    F_ofam_1d(1,m-1) = (2*m*RL1)/((2*(ceil(RL1/Rmax)-1))+1+((2^m)/n));
    %F_ofam_1d_2(1,m-1) = (2*m*RL2)/((2*(ceil(RL2/Rmax)-1))+1+((2^m)/n));

    F_ofam_3d_1(1,m-1) = (2*(e*n)*m*RL1)/((2^m)+(e*n));
    %F_ofam_3d_2(1,m-1) = (2*(e*n)*m*RL2)/((2^m)+(e*n));

    F_ofam_3d_ML(1,m-1) = (2*e2*n*m*RL1)/((2^m)+(e2*n));
    
    P_dppm(1,m-1) = (1+ ((m-2)/m))*100;
    P_dappm(1,m-1) = (1+ ((m-A)/m))*100;
    %P_ofam_3d_ml(1,m-1) = (1+(((m*2^m)/2)-(2^m/4)-(x1*2^m/4)-(x2*2^m/4)-(x3*2^m/4))/(m*2^m)/2)*100;
end

m = 2:8;
figure;
semilogy(m,F_ook,'->',...
    m,F_ppm,'-d',...
    m,F_dppm,'-s',...
    m,F_idppm,'-p',...
    m,F_dappm,'-*',...
    m,F_dappm_2,'-<',...
    m,F_ofam_3d_ML,'--h','lineWidth',2)
xlabel('M (bits)', 'FontSize', 11,'FontWeight','bold');
ylabel('Bit Rate (Bits/Sec)', 'FontSize', 11,'FontWeight','bold');
legend('OOK','PPM','DPPM','IDPPM','DAPPM,\alpha=2','DAPPM,\alpha=4',...
    'OFAM-3D,e=4,n=2',...
    'Location','Best', 'FontSize', 9,'NumColumns',2,'FontWeight','bold')
grid minor
ylim ([10,1e3]);