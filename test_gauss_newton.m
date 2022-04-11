
t = [1;2;4;5;8];
y = [3.2939;4.2699;7.1749;9.3008;20.259];

F = @(x) [x(1)*exp(t(1)*x(2))-y(1); 
    x(1)*exp(t(2)*x(2))-y(2);
    x(1)*exp(t(3)*x(2))-y(3);
    x(1)*exp(t(4)*x(2))-y(4);
    x(1)*exp(t(5)*x(2))-y(5)];
J = @(x) [exp(t(1)*x(2)), t(1)*x(1)*exp(t(1)*x(2));
    exp(t(2)*x(2)),t(2)*x(1)*exp(t(2)*x(2));
    exp(t(3)*x(2)),t(3)*x(1)*exp(t(3)*x(2));
    exp(t(4)*x(2)),t(4)*x(1)*exp(t(4)*x(2));
    exp(t(5)*(x(2))),t(5)*x(1)*exp(t(5)*x(2))];


% intial guess
x0 = [2.5;0.25];

% set other parameters
tol = 1e-10;
maxiter = 20;


% call newton_sys function here
[x,xhist] = gauss_newton(F,J,x0,tol,maxiter);

