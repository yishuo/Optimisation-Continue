%% 1ere condition de Wolfe
function beta1=CW1(x,f,fgrad,alpha,d)
beta1=Fonction(x+alpha*d,f)-Fonction(x,f);
beta1=beta1/(alpha*Fonction(x,fgrad)'*d);