clc; clear; close all;

f = @(x) x.^3 - 30*x.^2 + 2552;
df = @(x) 3*x.^2 - 60*x;

x0 = 3.0; tol=1.0e-3; maxiter = 4;

xmin = 0.0; xmax = 20.0;
ymin = -1500; ymax =  3000;
N = 1000;

newton_plot(f, df, x0, tol, maxiter, xmin, xmax, ymin, ymax, N)
