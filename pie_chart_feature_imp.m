clc;clear;close all; 


d_0 = [0.14383694 0.08537194 0.09183077 0.0131824  0.04352363 0.05421064...
    0.01197015 0.02923959 0.055561   0.08402505 0.09351461 0.10415791 0.06907903 0.01898413 0.01002306 0.09148915];
d_45 = [0.03995363 0.09311619 0.08784679 0.05058835 0.02302058 0.02606055...
    0.01763786 0.01555792 0.05895867 0.12201046 0.10850191 0.09634337 0.07479247 0.03033805 0.00552957 0.14974364];
d_90 = [0.13937115 0.0468225  0.05736639 0.01903155 0.05017244 0.02887685...
    0.02777912 0.11304642 0.03697585 0.13608869 0.06658347 0.06959953 0.10936481 0.01520424 0.00346893 0.08024806];

d_all = [0.08384624 0.02922485 0.02962025 0.01786505 0.03923745 0.08677652...
    0.04159    0.02337807 0.03000382 0.14928569 0.07635768 0.08794342 0.16469993 0.01425138 0.01101871 0.11490095];

labels = {'Mean (T)','S.D (T)','Variance (T)','Max (T)','Min (T)','Peak-peak (T)','Skewness (T)','Kurtosis (T)','Energy (T)',...
    'Mean (F)','S.D (F)','Variance (F)','MAD (F)','Peak Amplitude (F)','Peak frequency (F)','Energy (F)'};

t = tiledlayout(1,4,'TileSpacing','compact');

% Create pie charts
ax1 = nexttile;
p = pie(ax1,d_0);
for i = 2:2:32
    t = p(i);
    t.FontSize = 10;
    t.LineWidth = 1.5;
    t.FontWeight = "bold";
end
title('0 Degree', 'FontSize',10)

ax2 = nexttile;
p2 = pie(ax2,d_45);
for i = 2:2:32
    t2 = p2(i);
    t2.FontSize = 10;
    t2.LineWidth = 1.5;
    t2.FontWeight = "bold";

end
title('45 Degree', 'FontSize',10)

ax3 = nexttile;
p3 = pie(ax3,d_90);
for i = 2:2:32
    t3 = p3(i);
    t3.FontSize = 10;
    t3.LineWidth = 1.5;
    t3.FontWeight = "bold";
end
title('90 Degree', 'FontSize',10)

ax4 = nexttile;
p4 = pie(ax4,d_all);
for i = 2:2:32
    t4 = p4(i);
    t4.FontSize = 10;
    t4.LineWidth = 1.5;
    t4.FontWeight = "bold";
end
title('All positions', 'FontSize',10)

% Create legend
legend(labels,'NumColumns',8, 'FontSize',9);
%lgd.Layout.Tile = 'east';