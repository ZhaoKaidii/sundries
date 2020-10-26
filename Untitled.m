g=9.8;  
v=0;    
s=0;    
t=0;    
dt=0.1; 
N=20;   
for k=1:N
  v=v+g*dt;                
  s(k+1)=s(k)+v*dt;         
  t(k+1)=t(k)+dt;           
end

t_theory=0:0.01:N*dt;       
v_theory=g*t_theory;        
s_theory=1/2*g*t_theory.^2; 

t=0:dt:N*dt;
plot(t,s,'o', t_theory,s_theory, '-');
xlabel(' t'); ylabel(' s');
legend('simulation','theoretical');