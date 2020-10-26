sita=0:0.01:2*pi;
x=sin(sita);
y=cos(sita);
m=0;       
x1=2*rand(1000,1)-1;
y1=2*rand(1000,1)-1;
N=1000;     
for n=1:N   
    p1=x1(1:n);
    q1=y1(1:n);
    if (x1(n)*x1(n)+y1(n)*y1(n))<1 
        m=m+1;                      
    end
    plot(p1,q1,'.',x,y,'-k',[-1 -1 1 1 -1],[-1 1 1 -1 -1],'-k');
    axis equal;         
    axis([-2 2 -2 2]); 
    text(-1,-1.2,['n=',num2str(n)])
    text(-1,-1.4,['m=',num2str(m)]);
    text(-1,-1.6,['area S_c=',num2str(m/n*4)]);
    set(gcf,'DoubleBuffer','on');      
    drawnow;                           %
end