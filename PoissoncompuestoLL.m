function [LL, ll_i] = PoissoncompuestoLL(Beta,X,y)
%------------------------------------------------
% PURPOSE: Calculate the log-likelihood for the Poisson Process
%------------------------------------------------
% INPUTS: y    : Nx1 vector of dependent variable
%         X    : NxK indeoendent variables
%         beta : Kx1 vector of parameters
%------------------------------------------------
% OUTPUT: LL   : scalar log likelihood
%         ll_i : log-likelihood contribution of observations
%------------------------------------------------
lambda_i = exp(X*Beta);
ll_i     = -lambda_i + y.*log(lambda_i);
LL       = -sum(ll_i);

end