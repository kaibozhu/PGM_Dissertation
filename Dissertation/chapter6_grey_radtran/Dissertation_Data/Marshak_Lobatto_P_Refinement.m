% plot each methd and P as the mesh get refined
% use the finest time step size
close all

cell_meth = 'SL_Lobatto';
data_meth = 'SL_Lobatto';
quad_f = @lglnodes;

cell_base = {   sprintf('Marshak_Results/%s_P%i_320_cell',cell_meth,4) ...
                sprintf('Marshak_Results/%s_P%i_320_cell',cell_meth,3) ...
                sprintf('Marshak_Results/%s_P%i_320_cell',cell_meth,2) ...
                sprintf('Marshak_Results/%s_P%i_320_cell',cell_meth,1) };

data_base = {   sprintf('Marshak_Results/Marshak_Wave_%s_P%i_Base_Refine_16_Cells_64_Time',data_meth,4) ...
                sprintf('Marshak_Results/Marshak_Wave_%s_P%i_Base_Refine_16_Cells_64_Time',data_meth,3) ...
                sprintf('Marshak_Results/Marshak_Wave_%s_P%i_Base_Refine_16_Cells_64_Time',data_meth,2) ...
                sprintf('Marshak_Results/Marshak_Wave_%s_P%i_Base_Refine_16_Cells_64_Time',data_meth,1) };

Dark_Arts_Plotter(1,2 ,cell_base,data_base,quad_f)

temperature_file = sprintf('Pointless_Marshak_Zoom_Temperature_Lobatto_P_Refinement');
rad_file = sprintf('Pointless_Marshak_Zoom_Radiation_Lobatto_P_Refinement');

% Temperature
figure(1)
h = legend('P4' , 'P3' , 'P2' , 'P1');
set(h,'Interpreter','latex','FontSize',14);
% 
% set(gca,'XTick',[0.38 0.39 0.4])
axis([0.38 0.395 -0.05 0.6]);
SavePretty( figure(1) , temperature_file)

% Radiation
figure(2)
h = legend('P4' , 'P3' , 'P2' , 'P1');
set(h,'Interpreter','latex','FontSize',14);
axis([0.38 0.395 -0.05 0.7]);
SavePretty( figure(2) , rad_file)

