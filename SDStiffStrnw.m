format short
ft=14
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\StressMax_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\StiffSD_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\StiffAv_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\stressAv_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\princMax_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\princAv_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\StiffMS_300.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders300\datasn\Stiff_ND_300.txt'

load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\StressMax_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\StiffSD_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\StiffAv_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\stressAv_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\princMax_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\princAv_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\StiffMS_250.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders250\datasn\Stiff_ND_250.txt'

load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\princMax_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\StiffSD_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\StressMax_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\StiffAv_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\stressAv_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\princAv_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\StiffMS_200.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders200\datasn\Stiff_ND_200.txt'

load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\StressMax_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\StiffSD_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\StiffAv_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\stressAv_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\princMax_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\princAv_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\StiffMS_150.txt'
load 'C:\Users\celestink\Documents\TestingStation\ChngStiffreducedAv\folders150\datasn\Stiff_ND_150.txt'


% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_3\datas\StressMax_3.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_3\datas\StiffSD_3.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_3\datas\StiffAv_3.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_3\datas\stressAv_3.txt'
% 
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_4\datas\StressMax_4.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_4\datas\StiffSD_4.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_4\datas\StiffAv_4.txt'
% load 'C:\Users\celestink\Documents\TestingStation\InclModels\ChangingSDx10_4\datas\stressAv_4.txt'


figure(1)

axes1=axes('Parent',figure(1),'FontSize',ft,'FontName','Times New Roman'); 
box(axes1,'on');
hold(axes1,'on');
   scatter(StiffSD_150,StressMax_150,60,'s','filled','MarkerEdgeColor','r','MarkerFaceColor','r'),hold on;


   scatter(StiffSD_200,StressMax_200,60,'o','filled','MarkerEdgeColor','b','MarkerFaceColor','b'),hold on;

    scatter(StiffSD_250,StressMax_250,60,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

 scatter(StiffSD_300,StressMax_300,60,'*','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

%   plot(StiffSD_4,StressMax_4,'r')
  xlabel('Track modulus SD (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Maximum longitudinal stress (MPa)','FontName','Times New Roman',  'FontSize',ft);
legend('{\it\mu_E} = 150 MPa','{\it\mu_E} = 200 MPa','{\it\mu_E} = 250 MPa','{\it\mu_E} = 300 MPa','')
 figure(2)
 axes2=axes('Parent',figure(2),'FontSize',ft,'FontName','Times New Roman'); 
 box(axes2,'on');
 hold(axes2,'on');
 
   scatter(StiffSD_150,stressAv_150,60,'s','filled','MarkerEdgeColor','r','MarkerFaceColor','r'),hold on; 


  scatter(StiffSD_200,stressAv_200,60,'o','filled','MarkerEdgeColor','b','MarkerFaceColor','b'),hold on; 

  
    scatter(StiffSD_250,stressAv_250,60,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on; 

  
   scatter(StiffSD_300,stressAv_300,60,'*','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on; 

 % plot(StiffSD_4,stressAv_4,'r');
  xlabel('Track modulus SD (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Average maximum longitudinal stress (MPa)','FontName','Times New Roman',  'FontSize',ft);
legend('{\it\mu_E} = 150 MPa','{\it\mu_E} = 200 MPa','{\it\mu_E} = 250 MPa','{\it\mu_E} = 300 MPa','')

 figure(3)
 axes3=axes('Parent',figure(3),'FontSize',ft,'FontName','Times New Roman');
 box(axes3,'on');
 hold(axes3,'on');
 
   scatter(StiffSD_150,princAv_150,60,'s','filled','MarkerEdgeColor','r','MarkerFaceColor','r'),hold on; 


  scatter(StiffSD_200,princAv_200,60,'o','filled','MarkerEdgeColor','b','MarkerFaceColor','b'),hold on; 

  
    scatter(StiffSD_250,princAv_250,60,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on; 

  
  scatter(StiffSD_300,princAv_300,60,'*','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on; 

 % plot(StiffSD_4,stressAv_4,'r');
  xlabel('Track modulus SD (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Average maximum principal stress (MPa)','FontName','Times New Roman',  'FontSize',ft);
legend('{\it\mu_E} = 150 MPa','{\it\mu_E} = 200 MPa','{\it\mu_E} = 250 MPa','{it\mu_E} = 300 MPa','')
figure(4)

axes4=axes('Parent',figure(4),'FontSize',ft,'FontName','Times New Roman');
box(axes4,'on');
hold(axes4,'on');

    scatter(StiffSD_150,princMax_150,60,'s','filled','MarkerEdgeColor','r','MarkerFaceColor','r'),hold on;


    scatter(StiffSD_200,princMax_200,60,'o','filled','MarkerEdgeColor','b','MarkerFaceColor','b'),hold on;

  
    scatter(StiffSD_250,princMax_250,60,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

  
  scatter(StiffSD_300,princMax_300,60,'*','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

    
%   plot(StiffSD_4,StressMax_4,'r')
  xlabel('Track modulus SD (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Maximum principal stress (MPa)','FontName','Times New Roman',  'FontSize',ft);
legend('{\it\mu_E} = 150 MPa','{\it\mu_E} = 200 MPa','{\it\mu_E} = 250 MPa','{\it\mu_E} = 300 MPa','')

figure(5)

axes5=axes('Parent',figure(5),'FontSize',ft,'FontName','Times New Roman'); 
box(axes5,'on');
hold(axes5,'on');

  scatter(StiffSD_150,StiffAv_150,60,'s','filled','MarkerEdgeColor','r','MarkerFaceColor','r'),hold on;


  scatter(StiffSD_200,StiffAv_200,60,'o','filled','MarkerEdgeColor','b','MarkerFaceColor','b'),hold on;

  
    scatter(StiffSD_250,StiffAv_250,60,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

  
 scatter(StiffSD_300,StiffAv_300,60,'*','filled','MarkerEdgeColor','k','MarkerFaceColor','k'),hold on;

%   plot(StiffSD_4,StressMax_4,'r')
  xlabel('Track modulus SD (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Track stiffness average(MPa)','FontName','Times New Roman',  'FontSize',ft);
legend('{\it\mu_E} = 150 MPa','{\it\mu_E} = 200 MPa','{\it\mu_E} = 250 MPa','{\it\mu_E} = 300 MPa','')

figure(6)

axes6=axes('Parent',figure(6),'FontSize',ft,'FontName','Times New Roman'); 
box(axes6,'on');
hold(axes6,'on');
  scatter(StiffMS_150(:,3),Stiff_ND_150(:,3),40,'d','MarkerEdgeColor','k'),hold on;
  plot(StiffMS_150(:,3),Stiff_ND_150(:,3),'k'),hold on;
  
    scatter(StiffMS_150(:,6),Stiff_ND_150(:,6),40,'s','MarkerEdgeColor','k'),hold on;
  plot(StiffMS_150(:,6),Stiff_ND_150(:,6),'k'),hold on;
  
  scatter(StiffMS_300(:,3),Stiff_ND_300(:,3),40,'o','MarkerEdgeColor','r'),hold on;
  plot(StiffMS_300(:,3),Stiff_ND_300(:,3),'r'),hold on;

  scatter(StiffMS_300(:,6),Stiff_ND_300(:,6),40,'*','MarkerEdgeColor','r'),hold on;
  plot(StiffMS_300(:,6),Stiff_ND_300(:,6),'r'),hold on;
%   plot(StiffSD_4,StressMax_4,'r')
  xlabel('Track modulus (MPa)','FontName','Times New Roman', 'FontSize',ft);
  ylabel('Probability density function','FontName','Times New Roman',  'FontSize',ft);
legend(['{\it\mu_E} = ',num2str(StiffAv_150(3)),' MPa',' ,{\it\sigma_E} = ',num2str(StiffSD_150(3)),' MPa'],'',['{\it\mu_E} = ', num2str(StiffAv_150(6)),' MPa',', {\it\sigma_E} = ', num2str(StiffSD_150(6)),' MPa'],'',['{\it\mu_E} = ', num2str(StiffAv_300(3)),'MPa',', {\it\sigma_E} = ', num2str(StiffSD_300(3)),' MPa'],'',['{\it\mu_E} = ', num2str(StiffAv_300(6)),'MPa',', {\it\sigma_E} = ', num2str(StiffSD_300(6)),'MPa'],'')
% 
% m150=mean(StiffMS_250)
% m300=mean(StiffMS_200)
% dm150=150-m150
% dm300=300-m300
% gstd=[0.0 20.0 40.0 60.0 80.0 100.0]
% std150=std(StiffMS_150,1);
% std300=std(StiffMS_300,1);
% ds150=-gstd+std150;
% ds100=-gstd+std300;
% 
% for i=1:6
% co150(:,i)=StiffMS_150(:,i)+dm150(:,i);
% co300(:,i)=StiffMS_300(:,i)+dm300(:,i);
% Xm150(i)=0.5*(StiffMS_150(50,i)+StiffMS_150(51,i))
% Xm300(i)=0.5*(StiffMS_300(50,i)+StiffMS_300(51,i))
% cos150(1:50,i)=co150(1:50,i)+ds150(:,i)
% cos150(51:100,i)=co150(51:100,i)-ds150(:,i)
% 
% cos200(1:50,i)=co200(1:50,i)+ds200(:,i)
% cos200(51:100,i)=co200(51:100,i)-ds200(:,i)
% 
% cos250_ND(:,i)=1.0/(gstd(i)*sqrt(2*pi))*exp(-((cos250(:,i)-250).^2)./(2*(gstd(i))^2));
% cos200_ND(:,i)=1.0/(gstd(i)*sqrt(2*pi))*exp(-((cos200(:,i)-200).^2)./(2*(gstd(i))^2));
% end
% 
% figure(7)
% 
% axes7=axes('Parent',figure(7),'FontSize',ft,'FontName','Times New Roman'); 
% box(axes7,'on');
% hold(axes7,'on');
%   scatter(cos250(:,3),cos250_ND(:,3),40,'d','MarkerEdgeColor','k'),hold on;
%   plot(cos250(:,3),cos250_ND(:,3),'k'),hold on;
%   
%     scatter(cos250(:,6),cos250_ND(:,6),40,'s','MarkerEdgeColor','k'),hold on;
%   plot(cos250(:,6),cos250_ND(:,6),'k'),hold on;
%   
%    scatter(cos200(:,3),cos200_ND(:,3),40,'o','MarkerEdgeColor','k'),hold on;
%   plot(cos200(:,3),cos200_ND(:,3),'k'),hold on;
%   
%   scatter(cos200(:,6),cos200_ND(:,6),40,'*','MarkerEdgeColor','k'),hold on;
%   plot(cos200(:,6),cos200_ND(:,6),'k'),hold on;
% 
% %   plot(StiffSD_4,StressMax_4,'r')
%   xlabel('Track stiffness \it(MPa)','FontName','Times New Roman', 'FontSize',ft);
%   ylabel('Probability density function','FontName','Times New Roman',  'FontSize',ft);
% legend('\mu_E=250MPa, \sigma_E=40MPa','','\mu_E=250MPa, \sigma_E=100MPa','','\mu_E=200MPa, \sigma_E=40MPa','','\mu_E=200MPa, \sigma_E=100MPa','')
% 
% for k=2:7
%     STDStiff(k-1,1)=std(TieStiff(:,k));
% figure(k)
% % axes('Parent',figure(k), 'Fontsize',14,'FontName','Times New Roman');
% axes1=axes('Parent',figure(k),'XTick',[0 Tp'],'FontSize',15,'FontName','Times New Roman');
% xlim(axes1,[0 Rl]);
% hold(axes1,'on');
% box(axes1,'on');
% scatter(Pl(:,1),stresses(:,k),'d','filled')
% xlabel('$Position\,\, of\,\,the\,\, load\,\, at\,\, the\,\, rail\,\, top\,\,surface\,\, (mm)$','interpreter','Latex','FontSize',15)
% ylabel('$Maximum\,\, principal\,\,  stress\,\, in\,\, MPa$','interpreter','Latex','FontSize',15)
% title(['$Max.Principle\,\, stresses\,\, at\,\, tie\,\, moduli\,\, SD\,\,=$',num2str(STDStiff((k-1),1)),'$MPa$'],'interpreter','Latex','FontSize',15);
% % 
% figure(k+7)
% axis{k}=axes('Parent',figure(k+7),'XTick',[0 Tp'],'XMinorTick','off','FontSize',16,'FontName','Times New Roman');
% xlim(axis{k},[0 Rl]);
% hold(axis{k},'on');
% box(axis{k},'on');
% scatter(Tp(:,1),TieStiff(:,k),'s','filled')
% xlabel('$Tie\, \, centerline\, \, position\, \, along\, \, the\, \, rail\, \, (mm)$ ','interpreter','Latex','FontSize',15)
% ylabel('$Tie\, \, modulus\, \, in\, \, MPa$','interpreter','Latex','FontSize',15)
% title(['$Tie\, \, moduli\, \, at\, \, SD\,\,=$',num2str(STDStiff(k-1,1)),'$MPa$'],'interpreter','Latex','FontSize',14);
% end
% figure(30)
% axes30=axes('Parent',figure(30),'FontSize',15,'FontName','Times New Roman');
% % xlim(axes1,[0 Rl]);
% hold(axes30,'on');
% box(axes30,'on');
% scatter(StiffSD,Stresses(10,:),'d','filled')
% xlabel('$SD\, \, of\, \, tie\, \, Youngs\, \,  moduli\, \, (MPa)$','interpreter','Latex','FontSize',15)
% ylabel('$Average\, \, of\, \, max\,\, stress\,\, in\,\, the\, \, rail\, \, (MPa)$','interpreter','Latex','FontSize',15)
