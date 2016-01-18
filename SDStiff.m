clear all
SDfile=6;
numfiles=1;
myStresses=cell(SDfile,numfiles);
myPrinc=cell(SDfile,numfiles);
myStiff=cell(1,SDfile);
for k=1:SDfile
    myStiffName=sprintf('Concrete_E_%d.txt',k-1);
    myStiff{k}=importdata(myStiffName);
    StiffM(:,k)= myStiff{k};
    StiffMS=sort(StiffM,1);
    for l=1:numfiles
        myStressName=sprintf('RailMaxStress_%d_%d.txt',k-1,l-1);
        myPrincName=sprintf('RailMaxPrinc_%d%d.txt',k-1,l-1);
        myStresses{k,l}=importdata(myStressName);
        myPrinc{k,l}=importdata(myPrincName);
        L=size(myStresses{k,l});
        stressM((l-1)*L(1)+1:l*L(1),k)=myStresses{k,l};
        princM((l-1)*L(1)+1:l*L(1),k)=myPrinc{k,l}(:,1);
    end
    stressAv(k)=mean(stressM(:,k));
    princAv(k)=mean(princM(:,k));
    StressMax(k)=max(stressM(:,k));
    princMax(k)=max(princM(:,k));
    StiffSD(k)=std(myStiff{k},1);
    StiffAv(k)=mean(myStiff{k});
    Stiff_ND(:,k)=1.0/(StiffSD(k)*sqrt(2*pi))*exp(-((StiffMS(:,k)-StiffAv(k)).^2)./(2*(StiffSD(k))^2));
end
save StiffAv_150.txt -ascii -double StiffAv
save StressMax_150.txt -ascii -double StressMax
save princMax_150.txt -ascii -double princMax
save StiffSD_150.txt -ascii -double StiffSD
save stressAv_150.txt -ascii -double stressAv
save princAv_150.txt -ascii -double princAv
save StiffMS_150.txt -ascii -double StiffMS
save Stiff_ND_150.txt -ascii -double Stiff_ND