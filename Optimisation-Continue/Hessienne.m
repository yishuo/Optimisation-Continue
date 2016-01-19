% calculer la matrice de Hessienne d'une fonction
function H=Hessienne(f)
fx=diff(f,'x1'); 
fy=diff(f,'x2'); 
fxx=diff(fx,'x1'); 
fxy=diff(fx,'x2'); 
fyx=diff(fy,'x1'); 
fyy=diff(fy,'x2'); 
H=[fxx,fxy;fyx,fyy];
