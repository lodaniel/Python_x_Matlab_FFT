% Author: Luciano de Oliveira Daniel
% https://sites.google.com/site/professorlucianodaniel

function plota_v(X1, Y1)
figure1 = figure(1);
axes1 = axes('Parent',figure1);
hold(axes1,'on');
plot(X1,Y1);
ylabel('Tensão v(t) [V]','FontName','Times New Roman');
xlabel('Tempo [ms]','FontName','Times New Roman');
box(axes1,'on');
set(axes1,'FontName','Times New Roman','FontSize',18,'GridAlpha',0.5,...
    'XGrid','on','YGrid','on','Xlim',[0.0,0.1],...
    'Ylim',[-1.5,1.5]);
