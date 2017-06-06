function alphas = strongwolfe(f,x0,d,alpham)
% function alphas = strongwolfe(f,d,x0,alpham)
% Line search algorithm satisfying strong Wolfe conditions
% Algorithms 3.5 on pages 60-61 in Nocedal and Wright
% MATLAB code by Kartik Sivaramakrishnan
% Last modified: January 27, 2008

alpha0 = 0;
alphap = alpha0;
c1 = 1e-4;
c2 = 0.5;
alphax = alpham*rand(1);
[fx0,gx0] = feval(f,x0,d);
fxp = fx0;
gxp = gx0;
i=1;
% alphap is alpha_{i-1}
% alphax is alpha_i
while (1 ~= 2)
  xx = x0 + alphax*d;
  [fxx,gxx] = feval(f,xx,d);
  if ((fxx > fx0 + c1*alphax*gx0) || ((i > 1) & (fxx >= fxp)))
    alphas = zoom(f,x0,d,alphap,alphax);
    return;
  end
  if abs(gxx) <= -c2*gx0,
    alphas = alphax;
    return;
  end
  if gxx >= 0,
    alphas = zoom(f,x0,d,alphax,alphap);
    return;
  end
  alphap = alphax;
  fxp = fxx;
  gxp = gxx;
  alphax = alphax + (alpham-alphax)*rand(1);
  i = i+1;
end