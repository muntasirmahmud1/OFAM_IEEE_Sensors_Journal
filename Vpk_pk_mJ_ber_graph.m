clc;clear;close all;

% v_pk_0d = [4.48 7.96 6.068979592];
% v_pk_45d = [4.88 7.6 6.274];
% v_pk_90d = [4.72 7.56 6.204];

% v_pk_0d = [7.04 10.16 8.5164];
% v_pk_45d = [6.96 10.8 8.8197];
% v_pk_90d = [7.2 10.96 9.0133];

v_pk_0d = [9.2 12.72 11.3822];
v_pk_45d = [9.04 12.48 11.19534653];
v_pk_90d = [9.84 11.84 11.0678];

% v_pk_0d = [10.96 12.88 11.9427];
% v_pk_45d = [10.72 12.8 11.894];
% v_pk_90d = [10.95 12.72 12.1691];



% v_pk_0d2 = [0.92 2 1.2936];
% v_pk_45d2 = [0.94 1.64 1.234];
% v_pk_90d2 = [0.96 1.94 1.352929293];

% v_pk_0d2 = [1.18 2.6 1.8776];
% v_pk_45d2 = [1.82 3.2 2.4492];
% v_pk_90d2 = [1.74 4.8 3.618415842];

v_pk_0d2 = [3.12 4.84 3.8928];
v_pk_45d2 = [2.76 4.52 3.6544];
v_pk_90d2 = [4.32 6.2 5.164];

% v_pk_0d2 = [3.44 5.4 4.3432];
% v_pk_45d2 = [4.08 6.16 4.8616];
% v_pk_90d2 = [6.04 8.6 7.182970297];

avg_v_pk_0d = v_pk_0d(3);
avg_v_pk_45d = v_pk_45d(3);
avg_v_pk_90d = v_pk_90d(3);
avg_v_pk_0d2 = v_pk_0d2(3);
avg_v_pk_45d2 = v_pk_45d2(3);
avg_v_pk_90d2 = v_pk_90d2(3);
data = [avg_v_pk_0d avg_v_pk_0d2 
    avg_v_pk_45d avg_v_pk_45d2
    avg_v_pk_90d avg_v_pk_90d2];

err_high = [(v_pk_0d(1,2)-avg_v_pk_0d) (v_pk_0d2(1,2)-avg_v_pk_0d2)
    (v_pk_45d(1,2)-avg_v_pk_45d) (v_pk_45d2(1,2)-avg_v_pk_45d2)
    (v_pk_90d(1,2)-avg_v_pk_90d) (v_pk_90d2(1,2)-avg_v_pk_90d2)];

err_low = [ (avg_v_pk_0d-v_pk_0d(1,1)) (avg_v_pk_0d2-v_pk_0d2(1,1))
    (avg_v_pk_45d-v_pk_45d(1,1)) (avg_v_pk_45d2-v_pk_45d2(1,1))
    (avg_v_pk_90d-v_pk_90d(1,1)) (avg_v_pk_90d2-v_pk_90d2(1,1))];

figure;
r = bar(data,'BarWidth',0.85,'FaceColor','flat','LineWidth',2);
set (gca,'YMinorGrid','on');
xticklabels ({'0 Degree','45 Degree', '90 Degree'});
ylabel('Peak to Peak Voltage (V)', 'FontSize', 11,'Fontweight','bold');
%title('35 mJ', 'FontSize', 11);
ylim ([0,15]);
legend('f/4.17','f/11.11', 'FontSize', 9,'Location','northwest')
hold on

% Find the number of groups and the number of bars in each group
[ngroups, nbars] = size(data);
% Calculate the width for each bar group
groupwidth = min(0.8, nbars/(nbars + 1.5));

for i = 1:nbars
    % Calculate center of each bar
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, data(:,i), err_low(:,i),err_high(:,i), 'k', 'linestyle', 'none', 'HandleVisibility','off','LineWidth',1);
end
hold off



% f=figure;
% axes1 = axes('Parent',f);
% hold(axes1,'on');
% box(axes1,'on');
% set(axes1,'LineWidth',1.2);
% rr = bar(x,data,0.7,'FaceColor','flat','LineWidth',1.5);
% rr.CData(1,:) = [0.8500 0.3250 .0980];
% rr.CData(2,:) = [0.9290 0.6940 .1250];
% rr.CData(3,:) = [0 1 0];
% set (gca,'YMinorGrid','on');
% xticklabels ({'0 Degree','45 Degree', '90 Degree'});
% ylabel('Peak to Peak Voltage (V)', 'FontSize', 11,'Fontweight','bold');
% title('~65 mJ', 'FontSize', 11);
% ylim ([0,15]);
% %legend('0 Degree','45 Degree', '90 Degree')
% hold on

% err_high = [(max(v_pk_0d)-avg_v_pk_0d)+(max(v_pk_0d2)-avg_v_pk_0d2) (avg_v_pk_0d-min(v_pk_0d))+(avg_v_pk_0d2-min(v_pk_0d2))
%     (max(v_pk_45d)-avg_v_pk_45d)+(max(v_pk_45d2)-avg_v_pk_45d2) (avg_v_pk_45d-min(v_pk_45d))+(avg_v_pk_45d2-min(v_pk_45d2))
%     (max(v_pk_90d)-avg_v_pk_90d)+(max(v_pk_90d2)-avg_v_pk_90d2) (avg_v_pk_90d-min(v_pk_90d))+(avg_v_pk_90d2-min(v_pk_90d2))];
% err_low = [ (avg_v_pk_0d-min(v_pk_0d)) (avg_v_pk_0d2-min(v_pk_0d2))
%     (avg_v_pk_45d-min(v_pk_45d)) (avg_v_pk_45d2-min(v_pk_45d2))
%     (avg_v_pk_90d-min(v_pk_90d)) (avg_v_pk_90d2-min(v_pk_90d2))];
% % err_high2 = [(max(v_pk_0d2)-avg_v_pk_0d2) (max(v_pk_45d2)-avg_v_pk_45d2) (max(v_pk_90d2)-avg_v_pk_90d2)];
% % err_low2 = [ (avg_v_pk_0d2-min(v_pk_0d2)) (avg_v_pk_45d2-min(v_pk_45d2)) (avg_v_pk_90d2-min(v_pk_90d2))];
% 
% er = errorbar(x,data,err_low,err_high);
% er.Color = [0 0 0];
% er.LineStyle = 'none';
% er.LineWidth = 1;
