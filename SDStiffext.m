
clear all
ft=16;
fta=16;
SDfile=6;
sz=60
numfiles=5;
myStresses=cell(SDfile,numfiles);
myPrinc=cell(SDfile,numfiles);
myStiff=cell(1,SDfile);
myDisp=cell(SDfile,numfiles);

for k=1:SDfile
    myStiffName=sprintf('Concrete_E_%d.txt',k-1);
    myStiff{k}=importdata(myStiffName);
    StiffM(:,k)= myStiff{k};
    StiffMS=sort(StiffM,1);
    for l=1:numfiles
        myStressName=sprintf('RailMaxStress_%d_%d.txt',k-1,l-1);
        myPrincName=sprintf('RailMaxPrinc_%d%d.txt',k-1,l-1);
        myDispname=sprintf('RailMaxDisp_%d%d.txt',k-1,l-1);
        myStresses{k,l}=importdata(myStressName);
        myPrinc{k,l}=importdata(myPrincName);
        Disp{k,l}=importdata(myDispname);
        L=size(myStresses{k,l});
        stressM((l-1)*L(1)+1:l*L(1),k)=myStresses{k,l};
        princM((l-1)*L(1)+1:l*L(1),k)=myPrinc{k,l}(:,1);
    end
    stressAv(k)=mean(stressM(:,k));
    princAv(k)=mean(princM(:,k));
    StressMax(k)=max(stressM(:,k));
    princMax(k)=max(princM(:,k));
    StiffSD(k)=std(myStiff{k});
    StiffAv(k)=mean(myStiff{k});
    Stiff_ND(:,k)=1.0/(StiffSD(k)*sqrt(2*pi))*exp(-((StiffMS(:,k)-StiffAv(k)).^2)./(2*(StiffSD(k))^2));
end
save StiffAv_250.txt -ascii -double StiffAv
save StressMax_250.txt -ascii -double StressMax
save princMax_250.txt -ascii -double princMax
save StiffSD_250.txt -ascii -double StiffSD
save stressAv_250.txt -ascii -double stressAv
save princAv_250.txt -ascii -double princAv
save StiffMS_250.txt -ascii -double StiffMS
save Stiff_ND_250.txt -ascii -double Stiff_ND

wr=73.0;
a=9.2;
b=7.8;
l1=pi*a*b/wr;
tsp=21*25.4;
xx=tsp*(1:1:19);
xx1=xx(1:2:end)
 for k=1:6
%     STDStiff(k-1,1)=std(TieStiff(:,k));
figure(k)
% axes('Parent',figure(k), 'Fontsize',14,'FontName','Times New Roman');
axis{k}=axes('Parent',figure(k),'XTick',[0 xx1],'FontSize',fta,'FontName','Times New Roman');
hold(axis{k},'on');
box(axis{k},'on');
scatter(xx', myStresses{k,1},sz,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k')
xlabel('Position of the load at the rail top surface (mm)','FontSize',ft)
ylabel('Maximum longitudinal  stress in MPa','FontSize',ft)
title(['Max. longitudinal\ stresses at tie moduli SD=',num2str(StiffSD(k)),'MPa'],'FontSize',ft);
% 
figure(k+7)
axis{k+7}=axes('Parent',figure(k+7),'XTick',[0 xx1],'XMinorTick','off','FontSize',fta,'FontName','Times New Roman');
%xlim(axis{k+7},[0 Rl]);
hold(axis{k+7},'on');
box(axis{k+7},'on');
scatter(xx',myPrinc{k,1}(:,1),sz,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k');
xlabel('Position of the load at the rail top surface (mm)','FontSize',ft);
ylabel('Maximum principal  stress in MPa','FontSize',ft);
title(['Tie moduli at SD =',num2str(StiffSD(k)),'MPa'],'interpreter','Latex','FontSize',ft);

figure(k+20)
axis{k+20}=axes('Parent',figure(k+20),'XTick',[0 xx1],'FontSize',fta,'FontName','Times New Roman');
%xlim(axis{k+20},[0 Rl]);
hold(axis{k+20},'on');
box(axis{k+20},'on');
scatter(xx', Disp{k,1},sz,'d','filled','MarkerEdgeColor','k','MarkerFaceColor','k')
xlabel('Position of the load at the rail top surface (mm)','FontSize',ft)
ylabel('Vertical rail deflection in mm','FontSize',ft)
title(['Max. vertical deflection at tie moduli SD=',num2str(StiffSD(k)),' MPa'],'FontSize',ft);
end
% figure(30)
% axes30=axes('Parent',figure(30),'FontSize',16,'FontName','Times New Roman');
% % xlim(axes1,[0 Rl]);
% hold(axes30,'on');
% box(axes30,'on');
% scatter(StiffSD,Stresses(10,:),'d','filled')
% xlabel('$SD\, \, of\, \, tie\, \, Youngs\, \,  moduli\, \, (MPa)$','interpreter','Latex','FontSize',16)
% ylabel('$Average\, \, of\, \, max\,\, stress\,\, in\,\, the\, \, rail\, \, (MPa)$','interpreter','Latex','FontSize',16)