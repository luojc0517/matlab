function [ delta ] = generateDelta( X,beta )
%GENERATEDELTA X,beta
%  �õ�delta������
 mu=X*beta;
 delta=diag(mu);
end

