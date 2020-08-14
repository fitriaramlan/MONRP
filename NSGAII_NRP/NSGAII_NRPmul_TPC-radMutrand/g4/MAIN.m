% The code of NSGA-II accomplished on MATLAB
clear;clc;format compact;tic;
%-----------------------------------------------------------------------------------------

nobj = 2; % number of objectives
Generations = 250;	 % number of iterations
npop = 100;            % population size
Runs = 30;

[P_customer,S_customer,Req_percus,Cost_req,N,M] = extract_data;

MinValue   = zeros(1,N);
MaxValue   = ones(1,N);
Boundary   = [MaxValue;MinValue];
%-----------------------------------------------------------------------------------------
for run = 1 : Runs
    
    % initialize the population
    Population                    = round(rand(npop,N)); % initial population
    for i = 1 : npop
        FunctionValue(i,:)        = F_costfunction2(Population(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);     % calculate the objective function values
    end
    FrontValue                    = ENS(FunctionValue,'all');      % non-dominated sort, and return the front number of each solution
    DistanceValue                 = CrowdingDistance(FunctionValue,FrontValue);
    %-----------------------------------------------------------------------------------------
    % start iterations
    for Gene = 1 : Generations
        MatingPool          = MatingSelection(FunctionValue,FrontValue,DistanceValue);
        NewPopulation       = F_operator_radius_TPC(Population(MatingPool',:),FunctionValue(MatingPool',:),FrontValue(MatingPool'),Boundary);
        for i = 1 : npop
            newFunctionValue(i,:)    = F_costfunction2(Population(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);     % calculate the objective function values
        end
        
        Population          = [Population;NewPopulation];              % combine the two populations
        FunctionValue       = [FunctionValue;newFunctionValue];
        %% Next Population
        [Population,FunctionValue,FrontValue,DistanceValue] = EnvironmentalSelection(Population,FunctionValue,npop);
        Gene
    end
    F_output(Population,toc,'NSGAII_NRPmul_TPC-radMutrand_g4',P_customer,S_customer,Req_percus,Cost_req,N,M,run);
end

