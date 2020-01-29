function lab8

load('ClimateData_Bozeman(1).mat'); 


y=(1:1:230); 
figure
subplot(2,2,1); 
scatter(years_mine,temp); 
xlabel('year'); 
ylabel('Temp C');
title('Av Annual Temp')

subplot(2,2,2); 
scatter(years_mine,precip); 
xlabel('years'); 
ylabel('precipitation'); 
title('Av Annual Precip'); 

subplot(2,2,3); 
scatter(years_mine,snow); 
xlabel('years')
ylabel('snowfall'); 
title('Av Annual Snowfall'); 

subplot (2,2,4); 
scatter(years_mine,solarrad); 
xlabel('years'); 
ylabel('solar radiation'); 
title ('Av Annual Solar Radiation');

function [corr]=corr_coef_xy (x,y)

corr=0; 

totx=0;
toty=0;

for i=1:length(x)
    totx=x(i)+totx; 
end
for i=1:length(y)
    toty=y(i)+toty; 
end

mx=totx/length(x);
my=toty/length(y); 

q=zeros:length(x);
q2=zeros:length(x); 
for i=1:length(totx)
    q=(x(i)-mx)* (y(i)-my) * (1/length(x)-1); 
    q2
    
    
    
    
    



    
