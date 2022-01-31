%% 2(a)
f1 = @(x) x^3 - 2*x - 5;
%[choice1,sol1] = fzerogui(f1,[0,3]);
%% 2(b)
f2 = @(x) log(x+2/3);
[choice2,sol2] = fzerogui(f2,[0,1]);
%% 2(c)
f3 = @(x) sign(x-2)*sqrt(abs(x-2));
[choice2,sol3] = fzerogui(f3,[1,4])