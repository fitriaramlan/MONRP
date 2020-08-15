%% Read and extract the dataset from the text files
function [FunctionValue ] = F_costfunction5obj(x,P_customer,S_customer,Req_percus,Cost_req,N,M)

%% calculation of objective 1
obj1  = 0.3*sum(x.*Cost_req,2);


%% calculation of objective 2
obj2 = sum(sum(S_customer.*repmat(x,M,1).*repmat(P_customer,1,N),1),2);
obj2 = -obj2;

%% calculation of objective 3

Req_ind  = find(x==1);    %% requirements satisfied in the current population individual

Num_Satisfied_req = [];   %% Number of requirements satisfied for each customer

satisfied_req     = [];    %% Requirements satisfied for each customer

for ii = 1 : M
    
    %% calculating the Number of requirements satisfied for each customer
    
    XX        = S_customer(ii,:);    
    req_ii    = find(XX==1);  %% requested requirements for each customer
    NN        = x(req_ii);    
    Nn        = sum(NN);
    Num_Satisfied_req = [Num_Satisfied_req;Nn];
    %% calculating the Requirements satisfied for each customer
    
    YY                 = zeros(1,N);
    d                  = find(NN==1);
    MM                 = req_ii(d);
    YY(MM)             = 1;
    satisfied_req      = [satisfied_req;YY];
    clear NN;
end
obj3    = std(Num_Satisfied_req);
%% calculation of objective 4
ratio  =  (Num_Satisfied_req)./(Req_percus);
obj4   =   std(ratio);

cost_req_all = repmat(Cost_req,M,1);
%% calculation of objective 5
cost_satisreq = sum(satisfied_req.*cost_req_all,2);
obj5          = std(cost_satisreq);

%% Final Function value

FunctionValue = [obj1,obj2,obj3,obj4,obj5];

end

