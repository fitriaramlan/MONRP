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
V13 = zeros(1,30);
V14 = zeros(1,30);
V15 = zeros(1,30);
V16 = zeros(1,30);
V17 = zeros(1,30);
V18 = zeros(1,30);
V19 = zeros(1,30);
V20 = zeros(1,30);
V21 = zeros(1,30);
V22 = zeros(1,30);
V23 = zeros(1,30);
V24 = zeros(1,30);

%% Plot nrp-m4
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m4_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V1(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m4_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V2(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r1] = sort(V1);x1=r1(30);m1=r1(15);
[~,r2] = sort(V2);x2=r2(30);m2=r2(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m4_point3','_',num2str(x1)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m4-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m4_point5','_',num2str(x2)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m4-point5');
saveas (gcf, ['NSGAII-nrp-m4_bestrun'],'jpg')
clf



%% Plot nrp-m3
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V3(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m3_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V4(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r3] = sort(V3);x3=r3(30);m3=r3(15);
[~,r4] = sort(V4);x4=r4(30);m4=r4(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m3_point3','_',num2str(x3)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m3-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m3_point5','_',num2str(x4)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m3-point5');
saveas (gcf, ['NSGAII-nrp-m3_bestrun'],'jpg')
clf

clear FunctionValue
%% Plot nrp-m2
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V5(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m2_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V6(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r5] = sort(V5);x5=r5(30);m5=r5(15);
[~,r6] = sort(V6);x6=r6(30);m6=r6(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m2_point3','_',num2str(x5)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m2-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m2_point5','_',num2str(x6)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m2-point5');
saveas (gcf, ['NSGAII-nrp-m2_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-m1
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V7(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m1_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V8(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r7] = sort(V7);x7=r7(30);m7=r7(15);
[~,r8] = sort(V8);x8=r8(30);m8=r8(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-m1_point3','_',num2str(x7)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m1-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-m1_point5','_',num2str(x8)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-m1-point5');
saveas (gcf, ['NSGAII-nrp-m1_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-g4
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g4_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V9(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g4_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V10(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r9] = sort(V9);x9=r9(30);m9=r9(15);
[~,r10] = sort(V10);x10=r10(30);m10=r10(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g4_point3','_',num2str(x9)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g4-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g4_point5','_',num2str(x10)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g4-point5');
saveas (gcf, ['NSGAII-nrp-g4_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-g3
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V11(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g3_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V12(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r11] = sort(V11);x11=r11(30);m11=r11(15);
[~,r12] = sort(V12);x12=r12(30);m12=r12(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g3_point3','_',num2str(x11)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g3-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g3_point5','_',num2str(x12)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g3-point5');
saveas (gcf, ['NSGAII-nrp-g3_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-g2
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V13(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g2_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V14(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r13] = sort(V13);x13=r13(30);m13=r13(15);
[~,r14] = sort(V14);x14=r14(30);m14=r14(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g2_point3','_',num2str(x13)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g2-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g2_point5','_',num2str(x14)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g2-point5');
saveas (gcf, ['NSGAII-nrp-g2_bestrun'],'jpg')
clf

clear FunctionValue


%% Plot nrp-g1
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V15(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g1_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V16(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r15] = sort(V15);x15=r15(30);m15=r15(15);
[~,r16] = sort(V16);x16=r16(30);m16=r16(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-g1_point3','_',num2str(x15)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g1-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-g1_point5','_',num2str(x16)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-g1-point5');
saveas (gcf, ['NSGAII-nrp-g1_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e4
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e4_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V17(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e4_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V18(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r17] = sort(V17);x17=r17(30);m17=r17(15);
[~,r18] = sort(V18);x18=r18(30);m18=r18(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e4_point3','_',num2str(x17)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e4-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e4_point5','_',num2str(x18)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e4-point5');
saveas (gcf, ['NSGAII-nrp-e4_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e3
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e3_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V19(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e3_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V20(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r19] = sort(V19);x19=r19(30);m19=r19(15);
[~,r20] = sort(V20);x20=r20(30);m20=r20(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e3_point3','_',num2str(x19)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e3-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e3_point5','_',num2str(x20)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e3-point5');
saveas (gcf, ['NSGAII-nrp-e3_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e2
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e2_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V21(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e2_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V22(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r21] = sort(V21);x21=r21(30);m21=r21(15);
[~,r22] = sort(V22);x22=r22(30);m22=r22(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e2_point3','_',num2str(x21)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e2-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e2_point5','_',num2str(x22)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e2-point5');
saveas (gcf, ['NSGAII-nrp-e2_bestrun'],'jpg')
clf

clear FunctionValue

%% Plot nrp-e1
for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e1_point3','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V23(i) = Hypervolume(FunctionValue ,ones(1,size(FunctionValue,2)),1000);
    
end

clear FunctionValue

for i = 1:30
    
    eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e1_point5','_',num2str(i)]);
    
    FunctionValue = (FunctionValue - repmat(min(FunctionValue,[],1),size(FunctionValue,1),1))./repmat(max(FunctionValue,[],1)-min(FunctionValue,[],1),size(FunctionValue,1),1);
    
    V24(i) = Hypervolume(FunctionValue,ones(1,size(FunctionValue,2)),1000);
    
end
clear FunctionValue

[~,r23] = sort(V23);x23=r23(30);m23=r23(15);
[~,r24] = sort(V24);x24=r24(30);m24=r24(15);

eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul\NSGAII-nrp-e1_point3','_',num2str(x23)]);
subplot(2,1,1)
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e1-point3');
clear FunctionValue

subplot(2,1,2)
eval(['load D:\HV_NRP\NSGAII\NSGAII-nrp-mul_point5\NSGAII-nrp-e1_point5','_',num2str(x24)]);
plot(FunctionValue(:,1),FunctionValue(:,2),'o');
title('NSGAII-nrp-e1-point5');
saveas (gcf, ['NSGAII-nrp-e1_bestrun'],'jpg')
clf

clear FunctionValue

