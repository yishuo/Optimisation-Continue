function []=tracer(a,b)
%figure;
%ff = 100*(b - a.^2 ).^2 +(1 - a).^2 ;
%ff=-a-1.3*b+0.02*a.^2+0.02*b.^2+0.015*a*b+50;
%plot3(a ,b ,ff,'*-','markersize', 15);
plot(a,b,'k-',a,b,'*','LineWidth',2,'MarkerEdgeColor','k',...
                       'MarkerFaceColor','b',...
                       'MarkerSize',10);
hold on;
%[x,y]=meshgrid(0:0.8:1900,0:0.8:1900);
%[x,y]=meshgrid(-1.6:0.01:1.2,-0.5:0.01:2);
%ff = 100*(y - x.^2 ).^2 +(1 - x).^2 ;

%contour(x,y,ff,10);
%xlabel('x1');ylabel('x2');