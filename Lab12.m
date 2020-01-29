function Lab12 
s=.06;
w=16000;
v=[0:1:1200];
[q]=define_drag(s,w,v); 
m=min(q); 
semilogy(v,q);
hold on 
x=find(q==m); 
plot(x,m,'-o');
text (x,m,'leftarrow minimum value');
[min_drag,min_velocity]=optimum(0,1200); 
end


function [m,v]=optimum (xL,xu)
s=.06
w=1600
m=-1e2
g=((5^(1/2))-1)/2; 
x2=xy-(xu-xL)*g; 
x1=xi+(xu-xL)*g; 
[f2]=define_drag(s,w,x2); 
[f1]=define_drag(s,w,x1); 
while (abs(xu-xL)/abs(xu))>(1e-2)
    if f2<f1
        xu=x1;
        x1=xL+(xu-xL)*g; 
        [f1]=define_drag(s,w,x1);
    elseif f2>f1
            
            xL=x2
            x2=xy-(xu-xL)*g;
            [f2]=define_drag(s,w,x2); 
        end 
    end 
  v=(x1+x2)/2;
  [m]=define_drag(s,w,v);
end




function [d] = define_drag (s,w,v);
d=(.01)*(s)*(v.^2)+(.95/s)*((w./v).^2);
end
