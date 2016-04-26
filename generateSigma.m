function [ Sigma ] = generateSigma( lamda,gamma,t,H )
%GENERATESIGMA lamda,gamma,t,H
%   ͨ��lamda��gamma�õ�Sigma
 m=length(t);
 L=eye(m)*1;
 for j=2:m
     for k=1:j-1
         L(j,k)=generateLijk(t,gamma,j,k);
     end
 end
 logVar=H*lamda;
 var=exp(logVar);
 D=diag(var);
 Sigma=L*D*L';
end

