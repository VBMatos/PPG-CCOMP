clc; clear; close all;

tol = 1.0e-9; maxiter = 10;

f = @(x) x.^3 - 1;
df = @(x) 3*x.^2;

x0 = -2.0;

xmin = 0.0; xmax = 20.0;
ymin = -1500; ymax = 3000;
N = 1000;

while x0 <= 2.01
  disp(['Initial guess x0 = ', num2str(x0)]);
  root1 = newton_plot(f, df, x0, tol, maxiter, xmin, xmax, ymin, ymax, N);

  x0 += 0.1;
end
