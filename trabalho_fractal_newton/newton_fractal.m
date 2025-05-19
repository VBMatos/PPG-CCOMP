clc; clear; close all;

tol = 1.0e-9;
maxiter = 10;

f = @(x) x.^3 - 1;
df = @(x) 3*x.^2;

% Configura plot
x = linspace(-1, 1, 300);
y = linspace(-1, 1, 300);
[X, Y] = meshgrid(x, y);
Z = X + (1i * Y);

% Initializa imagem
img = zeros(size(Z));

chute = 0;

for i = 1:size(Z, 1)
    for j = 1:size(Z, 2)
      x0 = Z(i, j);

      disp(['Chute inicial: x0 = ', num2str(x0)]);
      [xn, iter] = newton(f, df, x0, tol, maxiter);

      img(i, j) = xn; % Armazena a raíz
    end;
end

% Exibe o plot
imagesc(x, y, abs(img));
colorbar();
title('Fractal de Newton (z^3 - 1)');
xlabel('Re(z)');
ylabel('Im(z)');
