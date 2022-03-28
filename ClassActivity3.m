%% Question 3
% Part a
% function and Jacobian, assuming x is a vector with 2 components
F = @(x) [4*(x(1)).^2 - 20*x(1) + (1/4)*(x(2))^2 + 8; (1/2)*x(1)*(x(2))^2 + 2*x(1) - 5*x(2) + 8];
J = @(x) [8*(x(1)) - 20, (1/2)*(x(2));
    (1/2)*(x(2))^2 + 2, (1/2)*(x(1))*(x(2))-5];

% intial guess
x0 = [0;0];

% set other parameters
tol = 1e-10;
maxiter = 20;

% call newton_sys function here
p = newton_sys(F,J,x0,tol,maxiter);