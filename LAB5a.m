clear all 
close all 

%data 

key={'glass bottle','Furniture','Computer','Plastic Bottle','Styrofoam','Wood','Lithium Battery','Printer Cartridge'};
mindist=[2.71 4.25 0.92 0.03 0.79 1.22 4.84 1.16]; %km
maxdist=[84.07 248.54 269.4 283.54 294.96 515.89 3975.58 6115.71]; %km
avdist=[18.4 79.46 101.24 27.15 46.33 92.36 1246.15 1713.57]; %km
time=[500 30 300 450 5000 15 100 100]; %years
ghg=[0.001 0.004 0.005 0.001 0.002 0.005 0.066 0.091]; %MTCE/us ton

c=(zeros(1));
for i=1:8; %sets size for loop 
    x= (maxdist(i) > 280 && avdist(i) > 100) || (time(i) >400);
     if maxdist(i)>200 & avdist(i)>100 | time (i) >400; 
         b=ghg(i);
         if c<b
             c=b;
         end 
     end 
end 


         
      
   
        
         
     I=find(ghg==c) ;
     fprintf('The Worst Trash is %s\n',key{I})

figure;
plot(ghg,'--ko');
xlabel('Types of Trash'); 
set(gca,'Xticklabel',key); 
ylabel('Green House Gas (MTCE/US Ton');
text(I,ghg(I),'Worst Trash------->','fontsize',12,'horizontalalignment','right');



