function [x,f] = FletcherReeves(fun, x)
[f,df] = fun(x);
[f0,g0] = fun([0;0]);
p = -df;
k = 0;
alpham = 0.01;
while ( k<1000 && f~=0 )
    a = strongwolfe(fun,p,x,alpham);
    
    [f,df] = fun(x);
    x = x + a*p;
    [f1,df1] = fun(x);
    
    B = dot(df1',df1) / dot(df',df);
    p = -df1 + B*p;
    k = k+1;
    df=df1;
    f=f1;
end
end