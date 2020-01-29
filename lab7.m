clear all 
close all 

% d1=xlsread('planets.xlsx')%,'AA2:AAend'); 
% save('planets.mat')
load('planets.mat'); 
d2=d1(:,27)

x=(zeros:5);
 for i=length(d1)
     if d2(i)<=.1 
         x(1)=(x(1)+1); 
 
     elseif d2(i)>.1 & d2(1)<=.2
             x(2)=(x(2)+1)
      
     elseif d2(i)>.2 & d2(i)<=.3
             x(3)=x(3)+1 
       
     elseif d2(i)>.3 & d2(i)<1
                     x(4)=(x(4)+1)
           
     else d2(i)>1
                     x(5)=x(5)+1
     end
 end 
   
 
 figure
 bar(x)
 
 d3=d1(:,6); 
 d4=d1(:,87); 
 d5=d1((:144)).*(d1(:,188)).; 
 
 y=find (d2>.04 &d2<.25 &d3>=91 &d3<=801 & d4 >= 187 & d4 <= 294 & d5>=.75 & d5<=1.84); 
 
 fprintf('the inhabital planets are %s\n', d1{y,51}); 
 
 
 
 