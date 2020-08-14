% The code of NSGA-II accomplished on MATLAB

clear;clc;format compact;tic;
%-----------------------------------------------------------------------------------------

nobj = 2; % number of objectives
Generations = 250;	 % number of iterations
npop = 99;            % population size
Runs = 30;

[P_customer,S_customer,Req_percus,Cost_req,N,M] = extract_data;

MinValue   = zeros(1,N);
MaxValue   = ones(1,N);
Boundary   = [MaxValue;MinValue];

%-----------------------------------------------------------------------------------------
for run = 1 : Runs
    kappa = 0.05;
    % initialize the population
    Population                    = round(rand(npop,N)); % initial population
    for i = 1 : npop
        FunctionValue(i,:)        = F_costfunction2(Population(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);     % calculate the objective function values
    end
    %-----------------------------------------------------------------------------------------
    % start iterations
    for Gene = 1 : Generations
        MatingPool                    = TournamentSelection(2,npop,-CalFitness(FunctionValue,kappa));
        Offspring                     = F_operator_Mrpc_bwm(Population(MatingPool',:),Boundary);
        
        for i = 1 : npop
            NewFunctionValue(i,:)     = F_costfunction2(Offspring(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);    % calculate the objective function values
        end
        
        Population                     = [Population;Offspring];                     % combine the two populations
        FunctionValue                  = [FunctionValue;NewFunctionValue];
        
        [Population,FunctionValue]     = EnvironmentalSelection(Population,FunctionValue,npop,kappa);
        Gene
    end
    
    F_output(Population,toc,'IBEA-NRPmul_MrPC-radMutrand',P_customer,S_customer,Req_percus,Cost_req,N,M,run);
    
end


