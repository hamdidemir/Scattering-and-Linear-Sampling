
alfa=10^(-12);
targetboundary=0.5;
targetx=linspace(-targetboundary,targetboundary,64);
targety=linspace(-targetboundary,targetboundary,64);
targetxx=repmat(targetx,[1,64]);
targetyy=repmat(targety,[64,1]);
targetyy=targetyy(:)';
%plot(targetxx,targetyy,'.');
 
for aa=1:length(X)  
    for bb=1:length(targetxx)
        
       pz(aa,bb)=sqrt((X(aa)-targetxx(bb))^2+(Y(aa)-targetyy(bb))^2);
       
    end
end

gz=inv(alfa*eye(length(ang))+Ess'*Ess)*Ess'*((1/4j)*besselh(0,2,k*pz));

for cc=1:length(targetxx)
    
       temp(cc)=(norm(gz(:,cc)));

end

temp=temp.^(-1);

Iz=reshape(temp,length(targetx),length(targety));
Iz=Iz.';
pcolor(targetx,targety,Iz);
shading interp
hold on
%xx=0.1*cos(ang);
%yy=0.1*sin(ang);
%plot(xx,yy,'w');
maximum=max(temp);
