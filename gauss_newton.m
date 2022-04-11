function [x,xhist] = gauss_newton(F,J,x0,tol,maxiter)
    i = 1;
    while (i <= maxiter)
        x = x0 - inv(J(x0)'*J(x0)).*(J(x0)'*F(x0));
        fprintf("number of iterartion: %d; function value: %d\n", ...
            i, norm(F(x)));
        if (norm(F(x)-F(x0),2) < tol)
            break;
        end
        %xhist(:,i) = x;
        xhist = 0;
        x0 = x;
        i = i + 1;
    end