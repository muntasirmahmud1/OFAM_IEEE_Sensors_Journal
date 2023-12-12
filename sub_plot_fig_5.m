clc;clear;close all

data = readmatrix ('d0_7_5CH1.csv');
t_10ms = data(22:1000015,1);
v_10ms = data(22:1000015,2)+0.48;  %%%change
v_10ms(isinf(v_10ms)) = 0;
pk_pk = max(v_10ms) - min(v_10ms)
t = tiledlayout(2,3,'TileSpacing','Compact','Padding','Compact');
nexttile
plot (t_10ms,v_10ms,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('0^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on


data2 = readmatrix ('d45_7_5CH1.csv');
t_2 = data2(22:1000015,1);
v_2 = data2(22:1000015,2)+0.48;  %%%change
v_2(isinf(v_2)) = 0;
pk_pk = max(v_2) - min(v_2)
nexttile
plot (t_2,v_2,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('45^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on

data3 = readmatrix ('d90_7_5CH1.csv');
t_3 = data3(22:1000015,1);
v_3 = data3(22:1000015,2)+0.48;  %%%change
v_3(isinf(v_3)) = 0;
pk_pk = max(v_3) - min(v_3)
nexttile
plot (t_3,v_3,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('90^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on

data4 = readmatrix ('d0_20CH1.csv');
t_4 = data4(22:1000015,1);
v_4 = data4(22:1000015,2)+0.48;  %%%change
v_4(isinf(v_4)) = 0;
pk_pk = max(v_4) - min(v_4)
nexttile
plot (t_4,v_4,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('0^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on

data5 = readmatrix ('d45_20CH1.csv');
t_5 = data5(22:1000015,1);
v_5 = data5(22:1000015,2)+0.48;  %%%change
v_5(isinf(v_5)) = 0;
pk_pk = max(v_5) - min(v_5)
nexttile
plot (t_5,v_5,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('45^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on


data6 = readmatrix ('d90_20CH1.csv');
t_6 = data6(22:1000015,1);
v_6 = data6(22:1000015,2)+0.48;  %%%change
v_6(isinf(v_6)) = 0;
pk_pk = max(v_6) - min(v_6)
nexttile
plot (t_6,v_6,'linewidth',1.5);
%xlim ([-0.0001,3e-4])
title ('90^o degree')
xlabel('Time - s')
ylabel('Voltage - V')
ylim ([-7,7]) %%%change
grid on

