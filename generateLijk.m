function [ lijk ] = generateLijk( t,gamma,j,k )
%GENERATEZIJK ����lijk,��������˳��Ϊt,gamma,j,k
zijk=[1,t(j)-t(k),(t(j)-t(k))^2,(t(j)-t(k))^3,(t(j)-t(k))^4,(t(j)-t(k))^5,(t(j)-t(k))^6];
lijk=zijk*gamma;
end

