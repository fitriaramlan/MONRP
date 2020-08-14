function Offspring = F_operator_Mrpc_bwm(MatingPool,Boundary)
% This function generates a new population by genetic operators

[N,D] = size(MatingPool);
%-----------------------------------------------------------------------------------------
Parent1 = MatingPool(1:N/3,:);
Parent2 = MatingPool(N/3+1:2*(N/3),:);
Parent3 = MatingPool(2*(N/3)+1:end,:);
%% Multi-Parent Crossover
Child = [];
for i = 1 : (N/3)
    p1              = Parent1(i,:);
    p2              = Parent2(i,:);
    p3              = Parent3(i,:);
    
    nVar=numel(p1);
    
    mm=randsample(nVar-1,2);
    m1=min(mm);
    m2=max(mm);
    
    c1=[p1(1:m1) p2(m1+1:m2) p3(m2+1:end)];
    c2=[p2(1:m1) p3(m1+1:m2) p1(m2+1:end)];
    c3=[p3(1:m1) p1(m1+1:m2) p2(m2+1:end)];
    
    %% Neighborhood based Mutation
    
    C1_new   = c1;
    C2_new   = c2;
    C3_new   = c3;
    ProM        = rand(1,D);
    nmu         = rand(1,D);
    
    mutvec      = nmu<ProM;
    xx          = find(mutvec ==1);
    
    c1(xx)      = 1-C1_new(xx);
    c2(xx)      = 1-C2_new(xx);
    c3(xx)      = 1-C3_new(xx);
    Child       = [Child;c1;c2;c3];
end
Offspring = Child;
MaxValue = repmat(Boundary(1,:),N,1);
MinValue = repmat(Boundary(2,:),N,1);
%-----------------------------------------------------------------------------------------
% Set the offsprings which are infeasible to boundary values
Offspring(Offspring>MaxValue) = MaxValue(Offspring>MaxValue);
Offspring(Offspring<MinValue) = MinValue(Offspring<MinValue);
end