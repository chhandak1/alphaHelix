clc 
clear all
X=load('breast-cancer-wisconsin.data');
x1=X(:,1:10);
x = [ones(size(x1,1),1) x1];
y=X(:,11);
for i=1:699
    if y(i)==2
        y(i)=-1;
    else
        y(i)=1;
    end
end
r1=randperm(699);
r=r1(1:480);
xtrain=x(r,1:11);
ytrain=y(r);
testpos=r1(481:699);
xtest=x(testpos,1:11);
ytest=y(testpos);
w1=PLA(xtrain,ytrain);
testFunc(w1,xtest,ytest);

    
