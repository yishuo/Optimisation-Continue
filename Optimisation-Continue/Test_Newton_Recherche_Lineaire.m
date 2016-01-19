%% Question3 la methode de Newton avec recherche lineaire.
figure(1)
%x1=-2:0.05:2;%Le code de Question3.
%x2=-4:0.05:4;
x1=0:1:100;%Le code de Question5.
x2=0:1:100;
[X1,X2]=meshgrid(x1,x2);
%f= 100*(X2 - X1.^2 ).^2 +(1 - X1).^2 ;
f = -2*X1-2.3*X2+0.01*X1.^2+0.01*X2.^2+0.015*X1.*X2+50;
%mesh(X1,X2,f);
contour3(X1,X2,f,40);
xlabel('x1');ylabel('x2');
hold on;
%x=[-1.5;1.5];%le depart du point.Le code de Question3.
x=[100;100];%le depart du point.Le code de Question5.
y=Newton(x,0.4,0.7)