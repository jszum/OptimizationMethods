function [x,f] = FletcherReeves(fun, x, iter)
[f,df] = fun(x);
p = -df;

alpham = 0.01;
k = 0;
while ( k<iter && f!=0 )
    a = strongwolfe(fun,p,x,alpham);
    
    [f,df] = fun(x);
    x = x + a*p;
    [f1,df1] = fun(x);
    
    B = dot(df1',df1) / dot(df',df);
    p = -df1 + B*p;
    df=df1;
    f=f1;
    
    k = k+1;
end
end