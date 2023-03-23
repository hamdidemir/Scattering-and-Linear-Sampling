
M=15;
N=M;
nu0=4*pi*10^(-7);
e0=8.854*10^(-12);
lamda=2;
ac=0.3;
k=(2*pi)/lamda; 
ang=linspace(0,2*pi,36);
R=1;
X=R*cos(ang);
Y=R*sin(ang);
Limit=0.25;

xsquare0=linspace(0.05,Limit,M);
ysquare0=linspace(0.05,Limit,M);
xxsquare0=repmat(xsquare0,[1,M]);
yysquare0=repmat(ysquare0,[M,1]);
yysquare0=yysquare0(:)';

xsquare1=linspace(-0.05,-Limit,M);
ysquare1=linspace(-0.05,-Limit,M);
xxsquare1=repmat(xsquare1,[1,M]);
yysquare1=repmat(ysquare1,[M,1]);
yysquare1=yysquare1(:)';

plot(X,Y,'x');
hold on

xn=[xxsquare0 xxsquare1];
yn=[yysquare0 yysquare1];
plot(xn,yn,'.');

Epsilon0=14;
Epsilon1=4;
Epsilon=zeros(1,length(xn));
Epsilon(1,1:length(xxsquare0)+1)=Epsilon0;
Epsilon(1,length(xxsquare0)+1:end)=Epsilon1;
k0=2*pi*sqrt(Epsilon0)/lamda; 
k1=2*pi*sqrt(Epsilon1)/lamda; 
a=lamda/20;

