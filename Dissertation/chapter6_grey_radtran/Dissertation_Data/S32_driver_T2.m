clear all
close all

p_ord = 3;
[q,w] = lglnodes(p_ord+1);
plot_p = linspace(-1,1,20);
[dfem_mat , junk] = feshpln(plot_p,q,p_ord);

n_skip = 80;
fig_num = 3;

cell_base = {   ...
  sprintf('Marshak_Results/MW_S32_Cv1_T2_SigA_1')...
        };
    
data_base = {   ...
  sprintf('Marshak_Results/MW_S32_Cv1_T2_SigA_1')...
        };

Pos_S_32_Marshak_Intensity_Plotter( fig_num , cell_base , data_base ,dfem_mat , n_skip )

figure(fig_num)
h = legend('$\mu=0.0483$', ...
    '$\mu=0.1445$', ...
    '$\mu=0.2393$', ...
    '$\mu=0.3319$', ...
    '$\mu=0.4214$', ...
    '$\mu=0.5069$', ...
    '$\mu=0.5877$', ...
    '$\mu=0.6630$', ...
    '$\mu=0.7322$', ...
    '$\mu=0.7945$', ...
    '$\mu=0.8494$', ...
    '$\mu=0.8963$', ...
    '$\mu=0.9349$', ...
    '$\mu=0.9648$', ...
    '$\mu=0.9856$', ...
    '$\mu=0.9973$');


axis([0 1.1 1E-6 10])
set(gca,'YScale','log')
% set(gca,'XTick',[0 0.1 0.2 0.3 0.4 0.5])
set(gca,'FontName','Times','FontSize',30)
set(h,'Interpreter','latex','FontSize',30)
xlabel('Position','FontSize',30,'Interpreter','latex');
ylabel('Intensity','FontSize',30,'Interpreter','latex');
set(gcf,'OuterPosition',[-7 33 1936 1056],'PaperPosition',[0.2500  2.5000 8.0000 6.0000],'PaperSize',[8.5 11] , 'Position', [1 41 1920  964])
SavePretty(gcf,'S32_T2_Intensity')
% 
% Dark_Arts_Plotter(1,2 ,cell_base,data_base,dfem_mat)
% 
% figure(1)
% set(gca, 'FontName','Times','FontSize',18)
% axis([0 0.8 -0.05 1.5]) 
% set(gcf,'OuterPosition',[-7 33 1936 1056],'PaperPosition',[0.2500  2.5000 8.0000 6.0000],'PaperSize',[8.5 11] , 'Position', [1 41 1920  964])
% 
% SavePretty(gcf,'S32_T2_Temperature');
% % close 1
% 
% 
% % Radiation
% figure(2)
% % h = legend('S_{32} T=0.1' );
% % set(h,'Interpreter','latex','FontSize',14);
% set(gca, 'FontName','Times','FontSize',24)
% xlabel('Position','FontSize',30,'FontName','Times');
% ylabel('Radiation Energy Density','FontSize',30,'FontName','Times')
% axis([0 0.8 -0.05 2.5])
% text(0.1 , 2.2 , '$\mu=0.0483$' , 'Interpreter','latex','FontSize',18 );
% text(0.3 , 1.7 ,'$\mu=0.1445$', 'Interpreter','latex','FontSize',18 );
% text(0.49 , 1.24 , '$\mu=0.2393$', 'Interpreter','latex','FontSize',18 );
% text(0.67 , 0.7 , '$\mu=0.3319$', 'Interpreter','latex','FontSize',18 );
% 
% set(gcf,'OuterPosition',[-7          33        1936        1056],'PaperPosition',[0.2500  2.5000 8.0000 6.0000],'PaperSize',[8.5 11] , 'Position', [0 0 1920  964])
% 
% 
% 
% SavePretty(gcf,'S32_T2_Radiation');