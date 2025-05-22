function [img] = metodo_newton(max_iter, f, df, z, tol, img)
  for k = 1:max_iter
    z_new = z - f(z) ./ df(z); %Método de Newton

    %Verifica convergência
    converge = abs(z_new - z) < tol;

    %Armazena número de iterações para os pontos que convergiram
    img = img + (converge & (img == 0)) * k;

    %Pontos que não convergiram
    z(~converge) = z_new(~converge);

    %Não atualiza pontos que convergiram
  end
end
