function lab11
a=[-4,-4,7,4,2,3,4,1;0,-1,0,1,0,0,1,0;0,0,2,0,0,0,0,0;-1,0,0,1,0,0,0,0;0,0,0,0,1,0,0,0;0,0,0,0,0,1,0,0;-1,0,2,0,0,1,2,0;0,-2,0,0,0,0,0,2];
b=[24;0;7;0;42;66;0;96];
% c=a/b;
mygausseid(a,b)
end 
function [x]=mygauss(a, b)

%forward elimination
sz=size(a);
n=sz(1);
x=zeros(1, n);
a=[a, b];
for i=1:n-1
    for j=i:n-1
        a(j+1, :)=a(j+1,:)-a(j+1, i)/a(i, i)*a(i, :);
    end
end
b=a(:, end);

%backward substitution
%%you do this part


    for i=n:-1:1
    top=b(i) 
        ifi+1<=n
        for j=i+1:n
            top=top-a(i,j)*x(j); 
        end 
    end
   x(i) =top/a(i,i); 
end

function[x] = mygaussid (A,B)
sz=size(a); 
n=sz(1)
x=zeros(1,n); 
a=[a,b]
%    if a(i/i)==o
%        x(i)=(top/(a,i)); 
%    end
   cond=1
   while cond >.0001 
       x(1)=((b(1)-a(1,2)*x(2)-a(1,3)*x(3))/a(1,1));
       x(2)=((b(2)-a(2,3)*x(3))/a(2,2));
       x(3)=(b(3)/a(3,3)); 
   end 

end 




