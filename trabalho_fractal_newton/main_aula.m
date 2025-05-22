clc; clear;
close all;

f = @(z) z.^3 - 1; %Polinômio
df = @(z) 3*z.^2; %Derivada do polinômio

% Parâmetros da imagem
width = 1000;
height = 1000;

x_min = -2; x_max = 2;
y_min = -2; y_max = 2;

newton_fractal(f, df, width, height, x_min, x_max, y_min, y_max);
