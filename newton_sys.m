%% Question 1
%% The function newton_sys
% The input are system of equations F, Jacobian J, the initial guess 
% p0, tolerance tol and the max number of iteration maxiter. The output is
% a vector of approximation p.
function p = newton_sys(F,J,p0,tol,maxiter)
    i = 1;
    while(i <= maxiter)
       y = J(p0)\(-F(p0));
       x = p0 + y;
       if (norm(y,2) < tol)
           break
       end
       p0 = x;
       p(:,i) = p0;
       i = i + 1;
    end
end