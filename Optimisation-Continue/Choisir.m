% Algorithme de Fletcher et Lemarechal(FL) 
% Recherche lineaire du pas qui verifie les conditions de Wolfe  
function alpha=Choisir(x,f,fgrad,beta1,beta2,alpha,d)
n=0;
al=0;
ar=10000;
lambda=20;
while (CW2(x,fgrad,alpha,d)>beta2||CW1(x,f,fgrad,alpha,d)<beta1)&&n<20
    if CW1(x,f,fgrad,alpha,d)<beta1
        ar=alpha;
        alpha=(al+ar)/2;
    else
        al=alpha;
        if ar==10000
            alpha=lambda*alpha;
        else
            alpha=(al+ar)/2;
        end
    end
    n=n+1;
end
