function newton_fractal(f, df, width, height, x_min, x_max, y_min, y_max)
  max_iter = 30;
  tol = 1.0e-9;

  % Inicializa grid
  x = linspace(x_min, x_max, width);
  y = linspace(y_min, y_max, height);
  [X, Y] = meshgrid(x, y);
  z = X + 1i * Y;

  % Inicializa matriz
  img = zeros(height, width);

  %Aplica método de newton
  img = metodo_newton(max_iter, f, df, z, tol, img);

  %Exibe a imagem
  plot_fractal(x, y, img);
end
