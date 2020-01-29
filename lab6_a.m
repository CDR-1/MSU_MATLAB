
function [temp_cv,temp_max,temp_min,temp_avg]= lab6_a (temp,flag); 
%calls for a function with outputs and inputs defined if temperature is in
%celcsius enter (temp,0) if farenheit enter (temp,1)

temp_max=0;
for i=(1:length(temp));
if flag == 0;
    temp_cv(i)=(temp(i)*1.8)+32;
elseif flag~=0; 
        temp_cv(i)=((temp(i)-32)/1.8);
    end 
 
  
if temp_cv(i)>temp_max; 
    temp_max=temp_cv(i); 
end 

temp_min=0;
if temp_cv(i)<temp_min; 
    temp_cv(i)=temp_min; 
end 

x=size(temp_cv); 
d=x(1,1)*x(1,2);
temp_avg=((sum(temp_cv))/d); 

end 
end





