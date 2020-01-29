function lab10 

load('tourdeFrance2.mat') 

H=0;
S=speed; 

for i=1:length(S)-1
    H=H+(S(i+1)+S(i))*((time(i+1)-time(i))/2); 
end 
H
A=time(end)-time(end-1); 
E=elevationdata; 
C=zeros(1,length(E)); 

for i=1:length(E)-1
    C(i)=(E(i+1)-E(i))/(time(i+1)-time(i)); 
end
    
    subplot(2,2,1:2); 
hAx=plotyy(time,speed,time,elevationdata);

 
ylabel(hAx(1),'Speed (km/h)')
ylabel(hAx(2),'Elevation (m)')
xlabel('time (hr)'); 

subplot(2,2,3:4); 
    plot(time,C); 
    ylabel('m/hr'); 
    xlabel('time');
 
    
