function w1=PLA(xtrain,ytrain)
w=rand(11,1);
n=0;
row=size(xtrain,1)
col=size(xtrain,2)
while(1)
    for i=1:row
        k=0;
        sum1=xtrain(i,:)*w;
        if((sum1<0)&(ytrain(i)>0)|((sum1>0)&(ytrain(i)<0)))
            k=k+1;
            if(ytrain(i)==-1)
                w=w-xtrain(i,:)';
            else
                w=w+xtrain(i,:)';
            end
        end
        n=n+1;
    end
    if (k==0)|(n==10)
       break;
    end
end
w1=w;
        
        