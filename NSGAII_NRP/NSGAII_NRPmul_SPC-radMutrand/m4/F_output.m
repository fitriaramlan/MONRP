function F_output (Population,time,Algorithm,P_customer,S_customer,Req_percus,Cost_req,N,M,run)
% This function is used for deleting the dominated solutions,
% and saving the result in the file

npop     = size(Population,1);

for i = 1 : npop
    FunctionValue(i,:)    = F_costfunction2(Population(i,:),P_customer,S_customer,Req_percus,Cost_req,N,M);     % calculate the objective function values
end

% Delete the dominated solutions
NonDominated  = ENS(FunctionValue,'first')==1;
Population    = Population(NonDominated,:);
FunctionValue = FunctionValue(NonDominated,:);

% Save the result to .m file
eval(['save NSGAII_NRPmul_SPC-radMutrand_res\', Algorithm,'_', num2str(run), ' Population FunctionValue time'])
% Save the result to two .txt files
%     savedata(Population   ,[Algorithm,'_', num2str(Problem),'_', num2str(M),'_', num2str(run),'_PS.txt']);
%     savedata(FunctionValue,[Algorithm,'_', num2str(Problem),'_', num2str(M),'_', num2str(run),'_PF.txt']);
end

function savedata(mat,filename)
f=fopen(filename,'w');
for i=1:size(mat,1)
    for j=1:size(mat,2)
        fprintf(f,'%15.6e',mat(i,j));
    end
    fprintf(f,'\r\n');
end
fclose(f);
end