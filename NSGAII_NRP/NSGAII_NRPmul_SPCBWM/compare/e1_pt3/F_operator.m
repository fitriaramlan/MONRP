function Offspring = F_operator(MatingPool, Boundary)
% This function generates a new population by genetic operators

[N,D] = size(MatingPool);
%-----------------------------------------------------------------------------------------
% Parameters setting
ProM = 0.3;     % The probability of mutation
%-----------------------------------------------------------------------------------------
% Single-point crossover
Parent1 = MatingPool(1:N/2,:);
Parent2 = MatingPool(N/2+1:end,:);
Child = [];
for i = 1 : (N/2)
    
    %% Single-point Crossover
    p1              = Parent1(i,:);
    p2              = Parent2(i,:);
    CrossoverIndex  = randi(D);
    c1 = [p1(1:CrossoverIndex) p2(CrossoverIndex+1:end)];
    c2 = [p2(1:CrossoverIndex) p1(CrossoverIndex+1:end)];
    
    %% Bitwise Mutation
    
    C1_new   = c1;
    C2_new   = c2;
    
    nmu         = rand(1,D);
    mutvec      = nmu<ProM;
    xx          = find(mutvec ==1);
    c1(xx)      = 1-C1_new(xx);
    c2(xx)      = 1-C2_new(xx);
    Child = [Child;c1;c2];
end
Offspring = Child;


MaxValue = repmat(Boundary(1,:),N,1);
MinValue = repmat(Boundary(2,:),N,1);
%-----------------------------------------------------------------------------------------
% Set the offsprings which are infeasible to boundary values
Offspring(Offspring>MaxValue) = MaxValue(Offspring>MaxValue);
Offspring(Offspring<MinValue) = MinValue(Offspring<MinValue);
end