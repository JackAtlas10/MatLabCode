function an=trunc(x,bitPrecission)
x=single(x);
if x>1
    error('stop truncating');
end
if x == 1 
    an = 1;
else
vt=zeros(1,bitPrecission);val=x;
for counter=1:bitPrecission
if 2*val >=1
    vt(counter)=1;
else 
    vt(counter)=0;
end
val=val*2-floor(val*2);
end
an=0;
for counter=1:bitPrecission
    an = an + vt(counter)*2^(-counter);
end
end
