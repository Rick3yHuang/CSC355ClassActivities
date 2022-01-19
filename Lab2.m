%% Lab #2: Approximating the Golden Ratio
[f, r] = recFib(6);

function [fn,rn] = recFib(n)
preprefn = 0;
prefn = 1;
    for i =1:(n-1)
        fn = preprefn + prefn;
        rn = fn./prefn;
        preprefn = prefn;
        prefn = fn;
    end
end


