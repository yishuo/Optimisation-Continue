%% la methode de newton 
function x=Newton(x,beta1, beta2)
n=0;
syms x1 x2;
%f= 100*(x2 - x1^2 )^2 +(1 - x1)^2 ;%Le code de Question3.
f = -2*x1-2.3*x2+0.01*x1.^2+0.01*x2.^2+0.015*x1*x2+50;%Le code de Question5.
gradient=[diff(f,'x1') diff(f,'x2')]'; 
fgrad=Fonction(x,gradient);
k=5000;
a=[0:0]; 
b=[0:0]; 
for i=1:k
    a(i)=x(1);
    b(i)=x(2);
    h=Fonction(x,Hessienne(f));
    L=Factorisation(h); 
    z=L'\fgrad;
    d=-L\z; %
    alpha=Choisir(x, f, gradient, beta1, beta2, 0.1, d);
    x=x+alpha*d;
    n=n+1;
    fgrad=Fonction(x,gradient);
    error=norm(fgrad);
    if error<0.01
       break;
    end;
end
n       
Tracer(a,b)


    
