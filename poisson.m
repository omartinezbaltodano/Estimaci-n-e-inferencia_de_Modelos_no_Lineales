function f = poisson(y,lambda) 

f = (lambda.^y).* exp(-lambda)./factorial(y)

end 