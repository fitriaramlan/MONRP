%% Read and extract the dataset from the text files
function [P_customer,S_customer,Req_percus,Cost_req,N,M] = extract_data

Data  =   textread('realistic-nrp\nrp-g4.txt');

No_req      = Data(2,:);     
N           = No_req(1);     % Number of requirements

Cost_req    = Data(3,1:N);     % costs of each requirements

Num_cus     = Data(5,:);
M           = Num_cus(1);     % Number of customers

P_customer      = zeros(M,1);
S_customer      = [];

Req_percus      = [];

for i = 1 : M
    S_curr        = zeros(1,N);
    curr          = Data((i + 5),:);       
    curr_in       = find(curr~= 0);
    nn            = length(curr_in);
  
    % calculate the weight of each customer
    P_customer(i) = curr(curr_in(1));       
    
    % calculate the stastisfaction of each customer
    S_cc          = curr_in(3 :nn);
    S_ccc         = curr(S_cc);
    S_curr(S_ccc) = 1;
    S_customer    = [S_customer;S_curr];
    Req_percus    = [Req_percus;nn];
end




