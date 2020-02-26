% Author: Luciano de Oliveira Daniel
% https://sites.google.com/site/professorlucianodaniel
% 
% Descrição: Programa para redimensionamento de figuras geradas pelo
%            Matlab. Util para colocar todos os graficos de um mesmo tamanho nos relatorios
%
n=gcf;
hFig=figure(n);
p=get(hFig,'Position');
%
i_plot=1;
%
if(i_plot) 
%     width=25;
%     height=0.45*width;
    width=20;
    height=0.5*width;
else
    % width=20;
    width=25;
    height=0.8*width;
end
%
set(hFig,'WindowStyle','normal');
set(hFig,'Units','centimeters');
set(hFig,'Position',[0 0 width height]);
%