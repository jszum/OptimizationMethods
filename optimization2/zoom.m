function alphas = zoom(f,x0,d,alphal,alphah)
% function alphas = zoom(f,x0,d,alphal,alphah)
% Algorithm 3.6 on page 61 in Nocedal and Wright
% MATLAB code by Kartik Sivaramakrishnan
% Last modified: January 27, 2008

c1 = 1e-4;
c2 = 0.5;
[fx0,gx0] = feval(f,x0,d);

while (1~=2),
   alphax = 1/2*(alphal+alphah);
   xx = x0 + alphax*d;
   [fxx,gxx] = feval(f,xx,d);
   xl = x0 + alphal*d;
   fxl = feval(f,xl,d);
   if ((fxx > fx0 + c1*alphax*gx0) | (fxx >= fxl)),
      alphah = alphax;
   else
      if abs(gxx) <= -c2*gx0,
        alphas = alphax;
        return;
      end
      if gxx*(alphah-alphal) >= 0,
        alphah = alphal;
      end
      alphal = alphax;
   end
end 