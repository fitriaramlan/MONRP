for p =  1 : 9
    Result=cell(2,1);
    for obj=  [ 4 6 8 10 ]
        Problem = p
        objective = obj
        run = 30;
        %-----------------------------------------------------------------------------------------
        C = [ ];
        
        for i = 1:30
            
            eval(['load D:\HVcalW\stateofart\NSGAII-org_W\NSGAII-org_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
            C = [ C ; F ];
            
        end   
        
        for i = 1:30
            
            eval(['load D:\HVcalW\mod_NSGAII\mod_ENV\expdec\NSGAII-SOB-CWD-matenv_per90expdec_Wpop\NSGAII-SOB-CWD-matenv_per90expdec_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
            C = [ C ; F ];
            
        end
        
        
        for i = 1:30
            
            eval(['load D:\HVcalW\mod_NSGAII\mod_ENV\mat_rand\NSGAII-mat_rand-CWDSOB-env_per90expdec_Wpop\NSGAII-mat_rand-CWDSOB-env_per90expdec_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
            C = [ C ; F ];
            
        end
        
        S = F_output(C);
        
        V1 = zeros(1,30);
        V2 = zeros(1,30);
        V3 = zeros(1,30);
       
        
         for i = 1:30
            
            eval(['load D:\HVcalW\stateofart\NSGAII-org_W\NSGAII-org_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
            F = (F - repmat(min(S,[],1),size(F,1),1))./repmat(max(S,[],1)-min(S,[],1),size(F,1),1);
            
            V1(i) = Hypervolume(F,ones(1,size(F,2)),1000);
            
        end   
        
        for i = 1:30
            
            eval(['load D:\HVcalW\mod_NSGAII\mod_ENV\expdec\NSGAII-SOB-CWD-matenv_per90expdec_Wpop\NSGAII-SOB-CWD-matenv_per90expdec_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
           F = (F - repmat(min(S,[],1),size(F,1),1))./repmat(max(S,[],1)-min(S,[],1),size(F,1),1);
            
            V2(i) = Hypervolume(F,ones(1,size(F,2)),1000);
            
        end
        
        
        for i = 1:30
            
            eval(['load D:\HVcalW\mod_NSGAII\mod_ENV\mat_rand\NSGAII-mat_rand-CWDSOB-env_per90expdec_Wpop\NSGAII-mat_rand-CWDSOB-env_per90expdec_W','_',num2str(p),'_',num2str(obj),'_',num2str(i)]);
            
            F = (F - repmat(min(S,[],1),size(F,1),1))./repmat(max(S,[],1)-min(S,[],1),size(F,1),1);
            
            V3(i) = Hypervolume(F,ones(1,size(F,2)),1000);
            
        end
        
               
        %
        Result{p} = [mean(V1),std(V1);mean(V2),std(V2);mean(V3),std(V3)];
        
        %         Result{p} = [mean(V1),std(V1);mean(V2),std(V2);mean(V3),std(V3);mean(V4),std(V4);mean(V5),std(V5);mean(V6),std(V6);mean(V7),std(V7);mean(V8),std(V8);mean(V9),std(V9);mean(V10),std(V10);mean(V11),std(V11)];
        
        
        disp(Result{p})
        
        
        % [~,r1] = ranksum(V1,V5);
        % [~,r2] = ranksum(V2,V5);
        % [~,r3] = ranksum(V3,V5);
        % [~,r4] = ranksum(V4,V5);
        % [r1,r2,r3,r4]
        %
        % [~,r5] = ranksum(V1,V6);
        % [~,r6] = ranksum(V2,V6);
        % [~,r7] = ranksum(V3,V6);
        % [~,r8] = ranksum(V4,V6);
        % [r5,r6,r7,r8]
        
        % [~,r9] = ranksum(V5,V6);
        % r9
        clear C;
        
    end
    
end

