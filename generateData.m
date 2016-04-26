function [ X,y,mu,delta,sigmaForY,m,t,H ] = generateData()
%X,y,mu,delta,sigmaForY,m,t,H
beta=[1,-0.5,0,0.5,0,0,0,0,0,0]';
lamda=[0,0.5,0.4,0,0,0,0]';
gamma=[-0.3,0.3,0,0,0,0,0]';
mu=zeros(1,9);
sigma=eye(9)*1;
sigma((sigma==0))=0.5;
m=binornd(11,0.8)+1;
X=zeros(m,10);
for i=1:m
    X(i,:)=[1,mvnrnd(mu,sigma)];
end
 H=X(:,1:7);
 t=sort(unifrnd(0,2,m,1));
 %产生mu向量,L矩阵,D矩阵,delta(三角形)矩阵
 mu=X*beta;
 delta=generateDelta( X,beta );
 sigmaForY=generateSigma(lamda,gamma,t,H,m);
 y=mvnrnd(mu,sigmaForY);
 y=y';
end

