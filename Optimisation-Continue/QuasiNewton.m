function x=quasiNewton(x,beta1, beta2)
n=0;
syms x1 x2;
%f= 100*(x2 - x1^2 )^2 +(1 - x1)^2 ; %le code Question2.
f = -2*x1-2.3*x2+0.01*x1.^2+0.01*x2.^2+0.015*x1*x2+50;%le code Question5.
gradient=[diff(f,'x1') diff(f,'x2')]'; 
h=eye(length(x));
k=5000;
fgrad=Fonction(x,gradient);
a=[0:0]; 
b=[0:0]; 
for i=1:k
    d=-inv(h)*fgrad;
    a(i)=x(1);
    b(i)=x(2);
    alpha=Choisir(x, f, gradient, beta1, beta2, 1, d);
    n=n+1;
    x=x+alpha*d;
    y=Fonction(x,gradient)-fgrad;
    % mettre a jour la matrice Hk 
    h=h+(y*y')/(y'*d)-(h*d*d'*h)/(d'*h*d);
    fgrad=Fonction(x,gradient);
    error=norm(fgrad);
    if error<0.000001
       break;
    end;
%    tracer(a,b);
end
n
Tracer(a,b);

