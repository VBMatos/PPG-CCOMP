clc; clear; close all;

tol = 1.0e-9; maxiter = 10;

f = @(x) x.^3 - 1;
df = @(x) 3*x.^2;

x0 = -2.0;

xmin = 0.0; xmax = 20.0;
ymin = -1500; ymax = 3000;
N = 1000;

x = linspace(xmin,xmax,N);

figure()
plot([xmin xmax],[0 0],'k',[0 0],[ymin ymax],'k','linewidth',3);
hold on
plot(x, f(x), 'b', 'linewidth', 3);

while x0 <= 2.01
  disp(['Initial guess x0 = ', num2str(x0)]);
  [xn, iter] = newton(f, df, x0, tol, maxiter);

  hold on
  plot(x0,0,'om','MarkerSize',12);
  hold on
  plot([x0 x0],[0 f(x0)],'r--','linewidth',2);
  plot(x0,f(x0),'ob','MarkerSize',12);

  if xn != NaN
    hold on
    plot([x0 xn],[f(x0) 0],'g-','linewidth',2);
  end

  x0 += 0.1;
end
