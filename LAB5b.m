clear all
close all 

prompt1 =('What is the absolute cold side temperature in Kelvin');
 tc=input(prompt1); 
 
 while tc<0
    prompt1 =('cold side temperature in Kelvin must be an absolute value');
 tc=input(prompt1); 
end 

 
 
prompt2 =('what is the absolute hot side tempurature in Kelvin?');
th=input(prompt2); 

while th<0
    prompt1 =('hot side temperature in Kelvin must be an absolute value');
 tc=input(prompt1); 
end 

if tc>th
    fprintf('the hot and cold tempuratures were flopped') 
    ta=th;
    tb=tc;
    e=1-((tb)/(th)); 
    fprintf('The efficiency is %3.2f',e)
elseif th>tc
    ef=1-(tc/th);
    fprintf ('The Efficiency is %3.2f',ef) 

end




    

 