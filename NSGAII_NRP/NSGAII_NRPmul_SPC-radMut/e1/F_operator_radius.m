function Offspring = F_operator_radius(Parent,PopObj,FrontValue,Boundary)
% This function generates a new population by genetic operators

[N,D] = size(Parent);
%-----------------------------------------------------------------------------------------
% Parameters setting
ProM = 0.1;     % The probability of mutation
%-----------------------------------------------------------------------------------------
%% Find Radius for each solutions corresponding to the fronts
NoF   = max(FrontValue);
Radius   = zeros(1,NoF);
for i = 1 : NoF
    F{i} = find(FrontValue == i);
    Distance = zeros(size(F{i},2));
    for ii = 1 : (size(F{i},2) - 1)
        for jj = (i + 1) : size(F{i},2)
            Distance(ii,jj) = norm(PopObj(F{i}(ii),:)-PopObj(F{i}(jj),:));
            Distance(jj,ii) = Distance(ii,jj);
        end
    end
    R          = mean(mean(Distance,1),2);
    Radius(i)  = R;
end


%% Single-point Crossover and  neighborhood based mutation
Child = [];
for i = 1 : (N/2)
    
    p1           = Parent(i,:);
    F1           = FrontValue(i);
    RR           = Radius(F1);
    
    F_init       = find(FrontValue == F1);
    KK           = length(F_init);
    
    PP_i         = PopObj(i,:);
    PP           = PopObj(F_init,:);
    Remain       = ones(1,KK);
    
    for k = 1 : KK
        if norm(PP_i - PP(k,:)) <= RR
            Remain(k) = 0;
        end
    end
    
    YY             = find(Remain==1);    %% Find the solutions in the neighborhood of the selected solution
    neighbor_sol   = F_init(YY);
    neighbor_num   = length(YY);

    if neighbor_num <= 0
        p2           = p1;
        Parent_in    = p1;
    else
        Parent_in   = Parent(neighbor_sol,:);
        CC          = randi(neighbor_num);
        p2          = Parent_in(CC,:);         %% Randomly select one solution from the neighborhood
    end
    
     %% Single-point Crossover
    CrossoverIndex  = randi(D);
    c1 = [p1(1:CrossoverIndex) p2(CrossoverIndex+1:end)];
    c2 = [p2(1:CrossoverIndex) p1(CrossoverIndex+1:end)];
    
    
    %% Neighborhood based Mutation
    PPP        = sum(Parent_in,1);
    nmu        = PPP/neighbor_num;
    
    C1_new   = c1;
    C2_new   = c2;
    
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