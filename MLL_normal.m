function [beta sigma2] = MLL_normal(X,y)
%------------------------------------------------
% PURPOSE: Estima los parametros por maxima verosimilitud cuando la
%          distribucion del termino de error se distribuye normal
%------------------------------------------------
% INPUTS: y : Nx1 vector de variable dependiente
%         X : NxK matriz de variables independientes
%------------------------------------------------
% OUTPUT: beta  : Kx 1 vector de parametros 
%         sigma : varianza del termino de error 
%------------------------------------------------

beta     = (X'*X)^(-1)*X'*y;
yhat     = X*beta;
e        = y-yhat;
n        = size(X,1);
sigma2   = (1/n)*e'*e;

end 