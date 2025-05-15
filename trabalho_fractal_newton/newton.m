function [xn, iter] = newton(f, df, x0, tol, maxiter)
  iter = 0;
  Error = inf;

  while Error > tol && iter < maxiter
    iter = iter + 1;
    dx = - f(x0)/df(x0);
    xn = x0 + dx;

    Error = abs(xn-x0);
    x0 = xn;

    printf([' iter = %3d   ',...
            ' root = %.16f ',...
            'Error = %.16f \n'],...
            iter,xn,Error);
  end

  if Error > tol
      xn = NaN;
  end
end
