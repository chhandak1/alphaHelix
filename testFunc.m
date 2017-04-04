function testFunc(w,xtest,ytest)
k=0;
row=size(xtest,1);
for i=1:row
    sum1=xtest(i,:)*w;
    if((sum1<=0&&ytest(i)<=0)||(sum1>=0&&ytest(i)>=0))
        k=k+1;
    end
end
success=(k/219)*100;
fprintf('\nSuccess ratio:%f\n',success);