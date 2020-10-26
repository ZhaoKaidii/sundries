g=9.8;     
v0=0;       
y0=1;       
m=1;        
t0=0;       
K=0.85;     
N=5000;     
dt=0.005;   
v=v0;       
y=y0; 
vx=2;       
x =0;       
for k=1:N 
    if y >0     
        v =v -g*dt;
        y =y +v*dt;
    else        
        y =-K.*v*dt;  
        v =-K.*v-g*dt;   
    end 
    x = x + vx*dt;
    hold on
    plot(x,y,'o'); 
    axis([-2 10 0 1]);              
    set(gcf,'DoubleBuffer','on');   
    drawnow;
end