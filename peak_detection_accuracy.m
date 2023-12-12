clc;clear;close all

data = readmatrix ('E:\docker\updated_dataset\pk_pk_master_old_dataset.csv');
data = data(1:98,:);
%data = data(1:100,:);
L7_22mJ_0d = data(:,1);
L7_22mJ_45d = data(:,2);
L7_22mJ_90d = data(:,3);

L7_35mJ_0d = data(:,4);
L7_35mJ_45d = data(:,5);
L7_35mJ_90d = data(:,6);

L7_50mJ_0d = data(:,7);
L7_50mJ_45d = data(:,8);
L7_50mJ_90d = data(:,9);

L7_60mJ_0d = data(:,10);
L7_60mJ_45d = data(:,11);
L7_60mJ_90d = data(:,12);

L20_22mJ_0d = data(:,13);
L20_22mJ_45d = data(:,14);
L20_22mJ_90d = data(:,15);

L20_35mJ_0d = data(:,16);
L20_35mJ_45d = data(:,17);
L20_35mJ_90d = data(:,18);

L20_50mJ_0d = data(:,19);
L20_50mJ_45d = data(:,20);
L20_50mJ_90d = data(:,21);

L20_60mJ_0d = data(:,22);
L20_60mJ_45d = data(:,23);
L20_60mJ_90d = data(:,24);

pilot = 128;
J = 100;
tot_err = zeros(J,1);
acc = zeros(J,1);

for j = 1:J

    L7_22mJ = [L7_22mJ_0d;L7_22mJ_45d;L7_22mJ_90d];
    L7_22mJ = L7_22mJ(randperm(length(L7_22mJ)));
    
    L7_35mJ = [L7_35mJ_0d;L7_35mJ_45d;L7_35mJ_90d];
    L7_35mJ = L7_35mJ(randperm(length(L7_35mJ)));
    
    L7_50mJ = [L7_50mJ_0d;L7_50mJ_45d;L7_50mJ_90d];
    L7_50mJ = L7_50mJ(randperm(length(L7_50mJ)));
    
    L7_60mJ = [L7_60mJ_0d;L7_60mJ_45d;L7_60mJ_90d];
    L7_60mJ = L7_60mJ(randperm(length(L7_60mJ)));
    
    L20_22mJ = [L20_22mJ_0d;L20_22mJ_45d;L20_22mJ_90d];
    L20_22mJ = L20_22mJ(randperm(length(L20_22mJ)));
    
    L20_35mJ = [L20_35mJ_0d;L20_35mJ_45d;L20_35mJ_90d];
    L20_35mJ = L20_35mJ(randperm(length(L20_35mJ)));
    
    L20_50mJ = [L20_50mJ_0d;L20_50mJ_45d;L20_50mJ_90d];
    L20_50mJ = L20_50mJ(randperm(length(L20_50mJ)));
    
    L20_60mJ = [L20_60mJ_0d;L20_60mJ_45d;L20_60mJ_90d];
    L20_60mJ = L20_60mJ(randperm(length(L20_60mJ)));
    
    
    %%%% Threshold calculation from Pilot symbols %%%%
    
    p = pilot/8;
    pilot_bits = [L20_22mJ(1:p,1); L20_35mJ(1:p,1); L20_50mJ(1:p,1);...
        L20_60mJ(1:p,1);...
        L7_22mJ(1:p,1);...
        L7_35mJ(1:p,1);L7_50mJ(1:p,1); L7_60mJ(1:p,1)];
    
    th_1 = mean(pilot_bits(1:2*p,1));
    th_2 = mean(pilot_bits(p+1:3*p,1));
    th_3 = mean(pilot_bits(2*p+1:4*p,1));
    th_4 = mean(pilot_bits(3*p+1:5*p,1));
    th_5 = mean(pilot_bits(4*p+1:6*p,1));
    th_6 = mean(pilot_bits(5*p+1:7*p,1));
    th_7 = mean(pilot_bits(6*p+1:8*p,1));
    
    % th = (mean(pilot_bits(1:p,1))+ mean(pilot_bits(p+1:2*p,1)))/2;
    % th__ = (mean(pilot_bits(2*p+1:3*p,1))+ mean(pilot_bits(p+1:2*p,1)))/2;
    
    rx_data_bits = [ones(length(L20_22mJ)-p,1); 2*ones(length(L20_35mJ)-p,1); 3*ones(length(L20_50mJ)-p,1); 4*ones(length(L20_60mJ)-p,1);...
                    5*ones(length(L7_22mJ)-p,1); 6*ones(length(L7_35mJ)-p,1); 7*ones(length(L7_50mJ)-p,1); 8*ones(length(L7_60mJ)-p,1)];
    rx_data_values = [L20_22mJ(p+1:end,1); L20_35mJ(p+1:end,1); L20_50mJ(p+1:end,1);...
        L20_60mJ(p+1:end,1);...
        L7_22mJ(p+1:end,1);...
        L7_35mJ(p+1:end,1);L7_50mJ(p+1:end,1); L7_60mJ(p+1:end,1)];
    
    demod = ones(length(rx_data_values),1);
    
    for i = 1:length(rx_data_values)
        if rx_data_values(i,1) < th_1
            demod(i,1) = 1;
        elseif rx_data_values(i,1) >= th_1 && rx_data_values(i,1) < th_2
            demod(i,1) = 2;
        elseif rx_data_values(i,1) >= th_2 && rx_data_values(i,1) < th_3
            demod(i,1) = 3;
        elseif rx_data_values(i,1) >= th_3 && rx_data_values(i,1) < th_4
            demod(i,1) = 4;
        elseif rx_data_values(i,1) >= th_4 && rx_data_values(i,1) < th_5
            demod(i,1) = 5;
        elseif rx_data_values(i,1) >= th_5 && rx_data_values(i,1) < th_6
            demod(i,1) = 6;
        elseif rx_data_values(i,1) >= th_6 && rx_data_values(i,1) < th_7
            demod(i,1) = 7;
        elseif rx_data_values(i,1) >= th_7
            demod(i,1) = 8;
        end
    end

    err = (demod~=rx_data_bits);
    tot_err(j,1) = sum(err);
    acc(j,1) = (length(rx_data_bits)-tot_err(j,1))/length(rx_data_bits) *100;
end

accuracy = mean(acc)



