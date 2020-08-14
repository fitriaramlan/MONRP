% Matlab code:paper: ISDE+ An indicator for Multi and Many objective optimization
% Authors: Rammohan Mallipeddi; Trinadh Pamulapati; P.N. Suganthan

% Email: trinadhpamulapati@gmail.com; mallipeddi.ram@gmail.com; epnsugan@ntu.edu.sg

% The code of NSGA-III accomplished on MATLAB
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
for run = 1: Runs
    
    % initialize the population
    Population                    = round(rand(npop,N)); % initial population
    for i = 1 : npop
        FunctionValue(i,:)        = F_costfunction2(Population(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);     % calculate the objective function values
    end
    
    DistanceValue                 = F_distance(FunctionValue,M);
    %-----------------------------------------------------------------------------------------
    % start iterations
    for Gene = 1 : Generations
        MatingPool            = MatingSelection(FunctionValue,DistanceValue);
        Offspring             = F_operator_bnc_bwm(Population(MatingPool',:),Boundary);
        
        for i = 1 : npop
            NewFunctionValue(i,:)     = F_costfunction2(Offspring(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);    % calculate the objective function values
        end
        
        Population            = [Population;Offspring];                     % combine the two populations
        FunctionValue         = [FunctionValue;NewFunctionValue];
        
        DistanceValue         = F_distance(FunctionValue,M);
        
        [~,rank]              = sort(DistanceValue,'ascend');
        % next population
        Population       = Population(rank(1:npop),:);
        FunctionValue    = FunctionValue(rank(1:npop),:);
        DistanceValue    = DistanceValue(rank(1:npop));
        Gene
    end
    F_output(Population,toc,'ISDE+-NRPmul_BNC-BWM-g4',P_customer,S_customer,Req_percus,Cost_req,N,M,run);
end