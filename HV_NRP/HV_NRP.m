%-----------------------------------------------------------------------------------------
C = [ ];
V1 = zeros(1,30);
V2 = zeros(1,30);
V3 = zeros(1,30);
V4 = zeros(1,30);
V5 = zeros(1,30);
V6 = zeros(1,30);
V7 = zeros(1,30);
V8 = zeros(1,30);
V9 = zeros(1,30);
V10 = zeros(1,30);
V11 = zeros(1,30);
V12 = zeros(1,30);

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-m4_point3','_',num2str(i)]);  
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V1(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-m3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V2(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-m2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V3(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-m1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V4(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-g4_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V5(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue


for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-g3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V6(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-g2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V7(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-g1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V8(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-e4_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V9(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-e3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V10(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue


for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-e2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V11(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

for i = 1:30
    
    eval(['load C:\Users\Fitri\Desktop\Nrp_mul\NRP_mul\files\NSGAII_NRP_mul\NSGAII-nrp-mul\NSGAII-nrp-e1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V12(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

Result = [mean(V1),std(V1);mean(V2),std(V2);mean(V3),std(V3);mean(V4),std(V4);mean(V5),std(V5);mean(V6),std(V6);mean(V7),std(V7);mean(V8),std(V8);mean(V9),std(V9);mean(V10),std(V10);mean(V11),std(V11);mean(V12),std(V12)];

disp(Result)


% [~,r1] = ranksum(V1,V5);
% [~,r2] = ranksum(V2,V5);
% [~,r3] = ranksum(V3,V5);
% [~,r4] = ranksum(V4,V5);
% [r1,r2,r3,r4]
%
% [~,r5] = ranksum(V1,V6);
% [~,r6] = ranksum(V2,V6);
% [~,r7] = ranksum(V3,V6);
% [~,r8] = ranksum(V4,V6);
% [r5,r6,r7,r8]

% [~,r9] = ranksum(V5,V6);
% r9
clear C;



