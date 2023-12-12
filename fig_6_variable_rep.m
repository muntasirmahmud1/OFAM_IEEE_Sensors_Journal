clc;clear;close all

data_ = readmatrix ('tek0180.csv');
t_10ms_ = data_(22:1000015,1);
v_10ms_ = data_(22:1000015,2);  %%%change
ls_10ms_ = (data_(22:1000015,3))/3 +3;
v_10ms_(isinf(v_10ms_)) = 0;
pk_pk = max(v_10ms_) - min(v_10ms_);
plot (t_10ms_,v_10ms_,t_10ms_,ls_10ms_,'linewidth',1.5);
legend('Rx','Tx', 'FontSize',9,'NumColumns',2)
%xlim ([-0.0001,3e-4])
title ('0^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
%ylim ([-7,7]) %%%change
grid on

data2 = readmatrix ('tek0194.csv');
t_10ms2 = data2(22:1000015,1);
v_10ms2 = data2(22:1000015,2)+0.48;
ls_2 = (data2(22:1000015,3))/3 +5-0.16;
figure;
t = tiledlayout(2,3,'TileSpacing','Compact','Padding','Compact');
nexttile
plot (t_10ms2,v_10ms2,t_10ms2,ls_2,'linewidth',1.5);
xlim ([-1.96,-0.96])
ylim ([-10,10])
xticks([-1.96 -1.76 -1.56 -1.36 -1.16 -0.96])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(a)'},'Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on

data = readmatrix ('tek0193.csv');
t_10ms = data(190000:186655+270015,1);
v_10ms = data(190000:186655+270015,2)+0.48;
ls_10ms_2 = (data(190000:186655+270015,3))/3 +5-0.16;
nexttile
plot (t_10ms,v_10ms,t_10ms,ls_10ms_2,'linewidth',1.5);
xlim ([-1.2,-0.18])
ylim ([-10,10])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(b)'},'Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on

data3 = readmatrix ('17hz.csv');
t_10ms3 = data3(22:100015,1);
v_10ms3 = data3(22:100015,2)+0.48;
ls_3 = (data3(22:100015,3))/2 +5.56;
nexttile
plot (t_10ms3,v_10ms3,t_10ms3,ls_3,'linewidth',1.5);
rectangle('Position',[0.075 -5 0.05 10],'lineWidth',1,'EdgeColor','r','LineStyle','--' )
%xlim ([-1.96,-0.96])
ylim ([-10,10])
xticks([-0.5 -0.3 -0.1 0.1 0.3 0.5])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(c)'},'Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on

data4 = readmatrix ('ppm_40hz.csv');
t_10ms4 = data4(22:100015,1);
v_10ms4 = data4(22:100015,2)+0.48;
ls_4 = (data4(22:100015,3))/4 + 3;
nexttile
plot (t_10ms4,v_10ms4,t_10ms4,ls_4,'linewidth',1.5);
%xlim ([-1.96,-0.96])
ylim ([-5,5])
xticks([-0.5 -0.3 -0.1 0.1 0.3 0.5])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(d)'},'Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on

data5 = readmatrix ('ofam_40hz_2.csv');
t_10ms5 = data5(22:100015,1);
v_10ms5 = data5(22:100015,2)+0.48;
ls_5 = (data5(22:100015,3))/4 + 3;
nexttile
plot (t_10ms5,v_10ms5,t_10ms5,ls_5,'linewidth',1.5);
%xlim ([-1.96,-0.96])
ylim ([-5,5])
xticks([-0.5 -0.3 -0.1 0.1 0.3 0.5])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(e)'},'Fontweight','bold')
%xlabel('Time (s)','Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on

data6 = readmatrix ('tek0180.csv');
t_10ms6 = data6(22:1000015,1);
v_10ms6 = data6(22:1000015,2)+0.48;
ls_6 = (data6(22:1000015,3))/3 + 5.5;
nexttile
plot (t_10ms6,v_10ms6,t_10ms6,ls_6,'linewidth',1.5);
xlim ([0.48,1.48])
ylim ([-10,10])
xticks([0.48 0.68 0.88 1.08 1.28 1.48])
xticklabels({'0','0.2','0.4','0.6','0.8','1'})
xlabel({'Time (s)';'(f)'},'Fontweight','bold')
%xlabel('Time (s)','Fontweight','bold')
ylabel('Voltage (V)','Fontweight','bold')
legend('Rx','Tx', 'FontSize',9,'NumColumns',2,'location','southeast')
grid on




