clc; clear;
close all;

%Data de nascimento "10/04/1991" codificada em "z^10 + z^4 + 1.991"

f = @(z) z.^10 + z.^4 + 1.991; %Polinômio
df = @(z) 10*z.^9 + 4*z.^3; %Derivada do polinômio

% Parâmetros da imagem
width = 3000;
height = 3000;

x_min = 0.5; x_max = 1;
y_min = 0; y_max = 0.5;

newton_fractal(f, df, width, height, x_min, x_max, y_min, y_max);
