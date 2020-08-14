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
%% Plot nrp-m4
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m4_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V1(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r1] = sort(V1);x1=r1(30);m1=r1(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m4_point3_obj4and5','_',num2str(x1)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m4-point3');
saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-m4_bestrun_obj4and5'],'jpg')
clf
clear FunctionValue


%% Plot nrp-m3
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m3_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V2(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r2] = sort(V2);x2=r2(30);m2=r2(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m3_point3_obj4and5','_',num2str(x2)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m3-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-m3_bestrun_obj4and5'],'jpg')
clf

%% Plot nrp-m2
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m2_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V3(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r3] = sort(V3);x3=r3(30);m3=r3(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m2_point3_obj4and5','_',num2str(x3)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m2-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-m2_bestrun_obj4and5'],'jpg')
clf


%% Plot nrp-m1
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m1_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V4(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r4] = sort(V4);x4=r4(30);m4=r4(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m1_point3_obj4and5','_',num2str(x4)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m1-point3');
clear FunctionValue
saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-m1_bestrun_obj4and5'],'jpg')
clf

%% Plot nrp-g4
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g4_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V5(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r5] = sort(V5);x5=r5(30);m5=r5(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g4_point3_obj4and5','_',num2str(x5)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g4-point3');
clear FunctionValue
saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-g4_bestrun_obj4and5'],'jpg')
clf


%% Plot nrp-g3
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g3_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V6(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r6] = sort(V6);x6=r6(30);m6=r6(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g3_point3_obj4and5','_',num2str(x6)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g3-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-g3_bestrun_obj4and5'],'jpg')
clf

%% Plot nrp-g2
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g2_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V7(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r7] = sort(V7);x7=r7(30);m7=r7(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g2_point3_obj4and5','_',num2str(x7)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g2-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-g2_bestrun_obj4and5'],'jpg')
clf

%% Plot nrp-g1
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g1_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V8(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r8] = sort(V8);x8=r8(30);m8=r8(15);


eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-g1_point3_obj4and5','_',num2str(x8)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g1-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-g1_bestrun_obj4and5'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e4
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e4_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V9(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue
[~,r9] = sort(V9);x9=r9(30);m9=r9(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e4_point3_obj4and5','_',num2str(x9)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e4-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-e4_bestrun_obj4and5'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e3
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e3_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V10(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r10] = sort(V10);x10=r10(30);m10=r10(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-m3_point3_obj4and5','_',num2str(x10)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e3-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-e3_bestrun_obj4and5'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e2
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e2_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V11(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r11] = sort(V11);x11=r11(30);m11=r11(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e2_point3_obj4and5','_',num2str(x11)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e2-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-e2_bestrun_obj4and5'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e1
for i = 1:30
    
    eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e1_point3_obj4and5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V12(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

[~,r12] = sort(V12);x12=r12(30);m12=r12(15);

eval(['load D:\HV_NRP\results\results_obj4and5\point3\NSGAII-nrp-e1_point3_obj4and5','_',num2str(x12)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e1-point3');
clear FunctionValue

saveas (gcf, ['D:\HV_NRP\results\results_obj4and5\plot\NSGAII-nrp-e1_bestrun_obj4and5'],'jpg')
clf



