function [vt,vy]=rk4(t0,tf,h,y0)
% t0 -> tempo inicial
% tf -> tempo final
% h -> passo de integração
% y0 -> condição inicial
% vt -> vetor com os tempos
% vy -> matriz com a solução numérica
t=t0;
i=0;
while t<=tf,
    i=i+1;
    vt(i)=t;
    vy(:,i)=y0;
    k1=model(t0,y0);
    k2=model(t0+h/2,y0+(h/2)*k1);
    k3=model(t0+h/2,y0+(h/2)*k2);
    k4=model(t0+h,y0+h*k3);
    y=y0+(h/6)*(k1+2*(k2+k3)+k4);
    t=t+h;
    y0=y;
end,
    
    
    
    
    
    
    
    
    