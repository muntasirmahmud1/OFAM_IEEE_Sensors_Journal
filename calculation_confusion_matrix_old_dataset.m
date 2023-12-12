clc;clear;close all

data = readmatrix ('E:\docker\updated_dataset\cm_cal_old_dataset.xlsx');
tx = data(1:2224,1);
rx = data(1:2224,2);
t = length(tx)/8;

n_1 = 0;n_2=0;n_3=0;n_4=0;n_5=0;n_6=0;n_7=0;n_8=0;
for i = 7*t+1:8*t
    if rx(i,1) == 1
        n_1 = n_1+1;
    elseif rx(i,1) == 2
        n_2 = n_2+1;
    elseif rx(i,1) == 3
        n_3 = n_3+1;
    elseif rx(i,1) == 4
        n_4 = n_4 +1;
    elseif rx(i,1) == 5
        n_5 = n_5 +1;
    elseif rx(i,1) == 6
        n_6 = n_6 +1;
    elseif rx(i,1) == 7
        n_7 = n_7 +1;
    elseif rx(i,1) == 8
        n_8 = n_8 +1;
    end
end

n = [n_5 n_6 n_7 n_8 n_1 n_2 n_3 n_4];