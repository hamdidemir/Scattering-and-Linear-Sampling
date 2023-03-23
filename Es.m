
Ess=zeros(length(ang),length(X));
pn=zeros(length(X),length(xn));
Ei=zeros(length(X),length(xn));

for mm=1:length(X)
    
    for nn=1:length(xn)
       
       pn(mm,nn)=sqrt((X(mm)-xn(nn))^2+(Y(mm)-yn(nn))^2);
       
       Ei(mm,nn)=(1/4j)*besselh(0,2,k*pn(mm,nn));
       
    end
end

Ei=transpose(Ei);
En=C^(-1)*Ei;
En=transpose(En);


   for iii=1:length(ang)        
        for kkk=1:length(ang)    
            for jjj=1:length(xn)          
                
                 Esxy=-1j*(pi*k/2)*(Epsilon(jjj)-1)*En(iii,jjj)*a*besselj(1,k*a)*besselh(0,2,k*pn(kkk,jjj));

                 Ess(iii,kkk)=Ess(iii,kkk)+Esxy;  
                 
            end
        end    
   end







%for kk=1:20

  %    Ess(kk)=-j*(pi*k/2)*sqrt(2j/(pi*k*R))*exp(-j*k*R)*(Epsilon-1)*En(kk)*a*besselj(1,k*a)*exp(j*k*(xn(kk)))*cos(kk)+yn(kk)*sin(kk);
     
%end


