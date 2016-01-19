% calculer la valeur d'une fonction sur un point pour simplifier le code
function v=Fonction(x,f)
v=subs(f,{'x1', 'x2'}, {x(1), x(2)});