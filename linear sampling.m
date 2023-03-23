alfa=10^(-9)
for kk=1:length(ang)
    for jj=1:length(X)
        Iz=abs((alfa*eye(length(ang))+ctranspose(Ess)*Ess)^(-1)*ctranspose(Ess)*besselh(0,2,k*pn(kk,jj)));
    end
end