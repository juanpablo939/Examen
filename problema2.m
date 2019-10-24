
i=1
xl=-1
xu=1
e(i)=10

while (e(i)>0.001)
    
    xr=(xl+xu)/2
   
    gxl= cos(xl+1)-sin*(xl+1)+.8;
    gxr= cos(xr+1)-sin*(xr+1)+.8;
    gxu= cos(xu+1)-sin*(xu+1)+.8;
    
    if (gxl*gxr < 0);
        xu=xr;
        e(i+1)=abs(xr-xl);
    end
    
    if (gxu*gxr < 0);
        xl=xr 
        e(i+1)= abs(xu-xr);
    end
    i=i+1;
    
    if (gxu*gxr==0)
        xr=xr;
    end
    
end
tamanio = size(e);
ite= 1:1:tamanio(2);
figure ('DefaultAxesFontsize', 14)
set (gcf, 'color', 'white');
plot(ite,e,'color',[1 0 0],'LineWidth',2);
grid on
hold on
xlabel('Iterations')
ylabel('error')
legend ('error')