clc;clear;

M=64;
nu0=4*pi*10^(-7);
e0=8.854*10^(-12);
lamda=0.1;
ac=0.5*lamda;
k=2*pi/lamda; 
ang=linspace(0,2*pi,36);
R=1;
X=R*cos(ang);
Y=R*sin(ang);

x=linspace(-1,1,M);
y=linspace(-1,1,M);

q=1;
for zz=1:M
    for ww=1:M
        if  (x(zz)+0.2)^2+(y(ww)-0.3)^2<=(0.2)^2
            xn(q)=x(zz);
            yn(q)=y(ww);     
            q=q+1;
        end
    end
end
Epsilon=zeros(1,length(xn));
Epsilon(1,1:end)=5;
a=sqrt(0.1^2/length(xn));  
plot(xn,yn,'.');
hold on
plot(X,Y,'x');
