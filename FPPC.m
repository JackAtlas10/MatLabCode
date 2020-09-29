function [len,delay,total]=FPPC(input,bitPre)
input=single(input);
seed=[];
counter=1;
log=false;
trav=trunc(input,bitPre);
seed(1)=trav;
index=0;
while log == false
    trav=trunc(4*trav*(1-trav),bitPre);
    counter=counter+1;
    seed(counter)=trav;
if trav == 1
    len = 1;
    delay = counter -1;
    total = counter ;
    break;
end
for i=1:(counter-1)
    if trav==seed(i)
       log=true;
       index=i;
       break;
    end
end

delay=index-1;
len=counter-index;
total = counter -1 ;
end

