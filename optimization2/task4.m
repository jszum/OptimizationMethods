pkg load symbolic

err = 1e-6;
a = 1;

%for i=1:30
%    x = [-5+10*((i-1)/29), -5+10*((i-1)/29)];
%    #[solution] = gdescent_backtrack(@himmelblau_explicit, x, err,a);
%    #[solution] = bfgs(@himmelblau_explicit, x);
%    [solution] = PolakRibiere(@himmelblau_explicit, x);
%    
%    printf ("[%f %f]; [%f %f]\n",x(1), x(2), solution(1), solution(2));
%end


x = [5,5];
tic
[solution] = gdescent_backtrack(@himmelblau_explicit, x, err,a)
toc