function F = F_output (F)

    NonDominated  = ENS(F,'first')==1;
    
    F             = F(NonDominated,:);

end

