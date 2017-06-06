function alphas = strongwolfe(f,d,x0,alpham)
% function alphas = strongwolfe(f,d,x0,alpham)
% Line search algorithm satisfying strong Wolfe conditions
% Algorithms 3.5 on pages 60-61 in Nocedal and Wright

alpha0 = 0;
alphap = alpha0;
alphas = 0;
c1 = 1e-4;
c2 = 0.5;
% alphax = alpham*rand(1);
alphax = alpham;
[fx0,gx0] = feval(f,x0);
fxp = fx0;
gxp = gx0;
i=1;
% alphap is alpha_{i-1}
% alphax is alpha_i
while (i<1000)
  xx = x0 + alphax*d;
  [fxx,gxx] = feval(f,xx);
  if (fxx > dot(fx0 + c1*alphax*gx0,fx0 + c1*alphax*gx0) || ((i > 1) && (fxx >= fxp)))
    alphas = zoom(f,x0,d,alphap,alphax);
    return;
  end
  if ( dot(abs(gxx),abs(gxx)) <= dot(-c2*gx0,-c2*gx0) )
    alphas = alphax;
    return;
  end
  if ( dot(gxx,gxx) >= 0 )
    alphas = zoom(f,x0,d,alphax,alphap);
    return;
  end
  alphap = alphax;
  fxp = fxx;
  gxp = gxx;
%   alphax = alphax + (alpham-alphax)*rand(1);
  alphax = alphax + (alpham-alphax);
  i = i+1;
end
if (alphas==0)
   alphas = alphax; 
end