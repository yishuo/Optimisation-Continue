%% 2eme condition de Wolfe
function beta2=CW2(x,fgrad,alpha,d)
beta2=(Fonction(x+alpha*d,fgrad)'*d)/(Fonction(x,fgrad)'*d);