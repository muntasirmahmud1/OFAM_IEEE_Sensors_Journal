clc;clear;close all;

x = [1;2;3;4;5;6];

data = [2.28   3.72    1.92    3.43  3.6  13.65]; 

figure1 = figure;
axes1 = axes('Parent',figure1);
hold(axes1,'on');
box(axes1,'on');
rr = bar(x,data,0.7,'FaceColor','flat','LineWidth',1.5);
rr.CData(1,:) = [0 0.4470 .7410];
rr.CData(2,:) = [0.8500 0.3250 .0980];
rr.CData(3,:) = [0.9290 0.6940 0.1250];
rr.CData(4,:) = [0.4940 0.1840 .5560];
rr.CData(5,:) = [0.4660 0.6740 0.1880];
rr.CData(6,:) = [0.6350 0.0780 0.1840];
ylabel('Symbol Rate (Sym/sec)', 'FontSize', 11,'Fontweight','bold');
ylim ([0,14]);
set(axes1,'LineWidth',1.5,'XTick',[1 2 3 4 5 6],'XTickLabel',...
    {'PDOOK','PPM','DPPM','IDPPM','DAPPM, \alpha =2','OFAM-1D, n=2'},'YMinorGrid','on', 'FontSize', 10,'Fontweight','bold');


x3 = [1;2;3;4;5;6;7];

data3 = [45.71   3.72    38.46   34.33   72.05  126.98  201.42]; 

figure3 = figure;
axes3 = axes('Parent',figure3);
hold(axes3,'on');
box(axes3,'on');
rr3 = bar(x3,data3,0.7,'FaceColor','flat','LineWidth',1.5);
rr3.CData(1,:) = [0 0.4470 .7410];
rr3.CData(2,:) = [0.8500 0.3250 .0980];
rr3.CData(3,:) = [0.9290 0.6940 0.1250];
rr3.CData(4,:) = [0.4940 0.1840 .5560];
rr3.CData(5,:) = [0.4660 0.6740 0.1880];
rr3.CData(6,:) = [0.4660 0.6740 0.1880];
rr3.CData(7,:) = [0.30 0.75 0.93];
ylabel('Symbol Rate (Sym/sec)', 'FontSize', 11,'Fontweight','bold');
ylim ([0,220]);
set(axes3,'LineWidth',1.5,'XTick',[1 2 3 4 5 6 7],'XTickLabel',...
    {'PDOOK','PPM','DPPM','IDPPM','DAPPM, \alpha =2','DAPPM, \alpha =4','OFAM-3D, e=4,n=2'},'YMinorGrid','on', 'FontSize', 10,'Fontweight','bold');



% x4 = [1;2;3;4;5;6];
% 
% data4 = [142.85   11.62    120.88    225.16  134.38  217.92];
% 
% figure4 = figure;
% axes4 = axes('Parent',figure4);
% hold(axes4,'on');
% box(axes4,'on');
% rr4 = bar(x4,data4,0.7,'FaceColor','flat','LineWidth',1.5);
% rr4.CData(1,:) = [0 0.4470 .7410];
% rr4.CData(2,:) = [0.8500 0.3250 .0980];
% rr4.CData(3,:) = [0.9290 0.6940 0.1250];
% rr4.CData(4,:) = [0.4940 0.1840 .5560];
% rr4.CData(5,:) = [0.4660 0.6740 0.1880];
% %rr3.CData(6,:) = [0.3010 0.7450 0.9330];
% rr3.CData(6,:) = [1 0 0];
% ylabel('Symbol Rate (Sym/sec)', 'FontSize', 11,'Fontweight','bold');
% %ylim ([0,5]);
% set(axes4,'LineWidth',1.5,'XTick',[1 2 3 4 5 6],'XTickLabel',...
%     {'PDOOK','PPM','DPPM','DAPPM','OFAM-3D','OFAM-3D-ML'},'YMinorGrid','on', 'FontSize', 10,'Fontweight','bold');



x2 = [1;2;3;4;5;6;7];

data2 = [137.05 137.05 137.05 109.48 58.97 137.05 137.05]; %26 Alphabets

figure2 = figure;
axes2 = axes('Parent',figure2);
hold(axes2,'on');
box(axes2,'on');
rr2 = bar(x2,data2,0.7,'FaceColor','flat','LineWidth',1.5);
%rr2.CData(1,:) = [0 0.4470 .7410];
rr2.CData(1,:) = [0.8500 0.3250 .0980];
rr2.CData(2,:) = [0.9290 0.6940 0.1250];
rr2.CData(3,:) = [0.4940 0.1840 .5560];
rr2.CData(4,:) = [0.4660 0.6740 0.1880];
rr2.CData(5,:) = [0.4660 0.6740 0.1880];
rr2.CData(6,:) = [0.6350 0.0780 0.1840];
%rr2.CData(7,:) = [0.11 0.88 0.84];
rr2.CData(7,:) = [0.30 0.75 0.93];
ylabel('Power Efficiency (%)', 'FontSize', 11,'Fontweight','bold');
ylim ([50,150]);
set(axes2,'LineWidth',1.5,'XTick',[1 2 3 4 5 6 7],'XTickLabel',...
    {'PPM','DPPM','IDPPM','DAPPM, \alpha =2','DAPPM, \alpha =4','OFAM-1D','OFAM-3D'},'YMinorGrid','on', 'FontSize', 10,'Fontweight','bold');





