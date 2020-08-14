function [Population,PopObj,FrontNo,CrowdDis] = EnvironmentalSelection(Population,PopObj,N)
% The environmental selection of NSGA-II

%--------------------------------------------------------------------------
% Copyright (c) 2016-2017 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB Platform
% for Evolutionary Multi-Objective Optimization [Educational Forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Non-dominated sorting
    [FrontNo,MaxFNo] = NDSort(PopObj,N);
    Next = FrontNo < MaxFNo;
    
    %% Calculate the crowding distance of each solution
     CrowdDis = CrowdingDistance(PopObj,FrontNo);    
    %% Select the solutions in the last front based on their crowding distances
    Last        = find(FrontNo==MaxFNo);
    [~,Rank]    = sort(CrowdDis(Last),'descend');     
    Next(Last(Rank(1:N-sum(Next)))) = true;

    %% Population for next generation
    Population = Population(Next,:);
    PopObj     = PopObj(Next,:);  
    FrontNo    = FrontNo(Next);
    CrowdDis   = CrowdDis(Next);
end