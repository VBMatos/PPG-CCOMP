function plot_fractal(x, y, img)
  figure(1, 'position', [100, 100, 1100, 870]);
  imagesc(x, y, img);

  colormap(ocean); %Paleta para a visão daltônica
  colorbar;

  title('Fractal de Newton');
  xlabel('Re(z)');
  ylabel('Im(z)');
  axis xy;
end
