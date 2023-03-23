
[mx,my]=meshgrid(xn,yn);

pmn=sqrt((mx-mx').^2+(my-my').^2);

C=zeros(length(xn),length(yn));

for ii=1:length(xn)
    
    for jj=1:length(yn);      
        
       C(ii,jj)=(1j*pi*k*a/2)*(Epsilon(jj)-1)*besselj(1,k*a)*besselh(0,2,k*pmn(ii,jj));     
     
    end    
    
end

for kk=1:length(xn)
    
    Cdiag(kk)=1+(Epsilon(kk)-1)*(1j/2)*(pi*k*a*besselh(1,2,k*a)-2j);
    
end

C(1:length(xn)+1:end)=0; 

C=C+diag(Cdiag);
