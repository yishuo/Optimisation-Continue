%% la methode de plus forte pente 
function x=LaPlusForte(x,beta1,beta2)
n=0;
syms x1 x2;
%f= 100*(x2 - x1^2 )^2 +(1 - x1)^2 ; %Code pour Question2
f = -2*x1-2.3*x2+0.01*x1.^2+0.01*x2.^2+0.015*x1*x2+50;%Code pour Question5
gradient=[diff(f,'x1'),diff(f,'x2')]'; 
fgrad=Fonction(x,gradient); 
k=5000;
a=[0:0]; %conserver les points dans chaque iteration.
b=[0:0]; %conserver les points dans chaque iteration.
for i=1:k
    a(i)=x(1);
    b(i)=x(2);
    d=-fgrad;
    alpha=Choisir(x,f,gradient, beta1 ,beta2, 0.01, d);
    n=n+1;
    x=x+alpha*d;
    fgrad=Fonction(x,gradient);
    error=norm(fgrad);
    if error<0.01
        break;
    end;
end
n       
Tracer(a,b)



    

