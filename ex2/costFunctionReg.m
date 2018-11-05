function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

z = (X * theta);
H = sigmoid(z);
costo = (-y' * log(H)) - ((1-y)' * (log(1 - H)));
obj1 = costo/m;

reduccion = (lambda/(2*m) ) * sum((theta(2:end)).^ 2);
J = obj1 + reduccion;

theta1 = theta;
theta1 = [0; ones(length(theta)-1, 1)];

derivada = ((H - y)' * X)';
obj1Grad = (1/m) * derivada;

obj2Grad = lambda .* theta .* theta1 ./ m;
grad = obj1Grad + obj2Grad;




% =============================================================

end
