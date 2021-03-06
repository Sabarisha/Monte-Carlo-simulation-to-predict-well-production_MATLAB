Qg=0; %gas produced from each well
QL=0;  %oil produced from each well
tot_opex=0; %total operational expenses
Qgtotsales=0; %total gas production
QLtotsales=0; %total oil production
comp_cost=0; %completion cost
for runs=1:1000  %for 1000 MC runs
disp (['runs is' num2str(runs)])
count_dry=0;  %number of dry wells
count_prod=0; %number of production wells
opex1=0; %operating expenses for initial 5 years
opex2=0; %operating expenses for next 15 years 
Qcat1=0; % initiating Q values for each category
Qcat2=0;
Qcat3=0;
Qcat4=0;
Qcat5=0;
Qcat6=0;
Qcat7=0;
Qcat8=0;
Qcat9=0;
Qcat10=0;
Qcat11=0;
type_gas=0; %gas wells count
type_oil=0;  %oil wells count
type_gascon=0; %gas condensate wells count
category_5=0;  %categories under which wells fall in
category_4=0;
category_3=0;
category_2=0;
category_1=0;
category_6=0;
category_7=0;
category_8=0;
category_9=0;
category_10=0;
category_11=0;
Dcat1=0.1178;  % D avg values of each category
Dcat2=0.075;
Dcat3=0.0855;
Dcat4=0.1336;
Dcat5=0.3437;
Dcat6=0.197;
Dcat7=0.1102;
Dcat8=0.121;
Dcat9=0.1805;
Dcat10=0.0616;
Dcat11=0.0604;
Qicat1=1.2943; % avg Qi values of each category
Qicat2=0.426;
Qicat3=0.3855;
Qicat4=0.1863;
Qicat5=0.1448;
Qicat6=19.14;
Qicat7=85.5;
Qicat8=202.6;
Qicat9=0.3981;
Qicat10=0.5639;
Qicat11=0.8572;

for t=1:60 % total time taken to drill 120 wells
disp (t)

for wells=1:2 % 2 wells drilled in 1 month
disp (wells)
p=rand(1) %probability of getting dry or production well
if(p<=0.2) %probability of getting dry well <20%
'it is a dry well'
count_dry=count_dry+1; %no of dry wells
disp (count_dry)
else
'it is a production well'
count_prod=count_prod+1; % no of production wells
disp (count_prod)
opex1=opex1+(count_prod*2000*(60-t));  %operating expenses for each production well for 5 years
c=rand(1) %probability of getting gas or oil or gas condensate well
if(c<=0.535) %probability of gas well
'it is gas well'
type_gas=type_gas+1; %no of gas well
disp (type_gas)
d=rand(1) %probability of categories of gas well
if(d<=0.62)  % probability of category 5 
'it is category 5'
category_5=category_5+1; %no of category 5
disp (category_5)
else if(d<=0.794) %probability of category 4
'it is category 4'
category_4=category_4+1; %no of of category 4
disp (category_4)
else if(d<=0.853) %probability of category 3
'it is category 3'
category_3=category_3+1; %no of of category 3
disp (category_3)
else if(d<=0.9112) %probability of of category 2
'it is category 2'
category_2=category_2+1; %no of category 2
disp (category_2)
else
'it is category 1'
category_1=category_1+1; %no of category 1
disp (category_1)
end
end
end
end
else if(c<= 0.779)
'it is oil well'
type_oil=type_oil+1;
disp (type_oil)
f=rand(1)
if(f<=0.645)
'it is category 6'
category_6=category_6+1;
disp (category_6)
else if(f<=0.807)
'it is category 7'
category_7=category_7+1;
disp (category_7)
else
'it is category 8'
category_8=category_8+1;
disp (category_8)
end
end
else
'it is gas condensate well'
type_gascon=type_gascon+1;
disp (type_gascon)
g=rand(1)
if(g<=0.429)
'it is category 9'
category_9=category_9+1;
disp (category_9)
else if(g<=0.822)
'it is category 10'
category_10=category_10+1;
disp (category_10)
else
'it is category 11'
category_11=category_11+1;
disp (category_11)
end
end
end
end
end
end
for i=1:category_1				
Qcat1 = ((Qicat1*exp((-((Dcat1)*t))/12))*30)+Qcat1;			
end				
				
for i=1:category_2				
Qcat2 = ((Qicat2*exp((-((Dcat2)*t))/12))*30) +Qcat2;				
end				
				
for i=1:category_3				
Qcat3 =((Qicat3*exp((-((Dcat3)*t))/12))*30) + Qcat3;				
end				
				
for i=1:category_4				
Qcat4 = ((Qicat4*exp((-((Dcat4)*t))/12))*30) + Qcat4;				
end				
				
for i = 1:category_5				
Qcat5 = ((Qicat5*exp((-((Dcat5)*t))/12))*30) + Qcat5;
end				

for i = 1:category_6
Qcat6 = ((Qicat6*exp((-((Dcat6)*t))/12))*30) +Qcat6;
end

for i = 1:category_7
Qcat7 = ((Qicat7*exp((-((Dcat7)*t))/12))*30) +Qcat7;
end

for i = 1:category_8
Qcat8= ((Qicat8*exp((-((Dcat8)*t))/12))*30) +Qcat8;
end

for i = 1:category_9
Qcat9 = ((Qicat9*exp((-((Dcat9)*t))/12))*30) + Qcat9;
end

for i = 1:category_10
Qcat10 = ((Qicat10*exp((-((Dcat10)*t))/12))*30) + Qcat10;
end

for i = 1:category_11
Qcat11 = ((Qicat11*exp((-((Dcat11)*t))/12))*30)+Qcat11;
end
end
for t = 61:240
for i = 1:category_1				
Qcat1 = ((Qicat1*exp((-((Dcat1)*t))/12))*30) + Qcat1;	
end				
Qcat1sales =(Qcat1*3.71*1000*0.8);
				
for i = 1:category_2				
Qcat2 = ((Qicat2*exp((-((Dcat2)*t))/12))*30) + Qcat2;
end			
Qcat2sales =(Qcat2*3.71*1000*0.8);
				
for i = 1:category_3				
Qcat3 = ((Qicat3*exp((-((Dcat3)*t))/12))*30) + Qcat3;				
end
Qcat3sales =(Qcat3*3.71*1000*0.8);
				
for i = 1:category_4				
Qcat4 = ((Qicat4*exp((-((Dcat4)*t))/12))*30) + Qcat4;				
end				
Qcat4sales =(Qcat4*3.71*1000*0.8);
				
for i = 1:category_5				
Qcat5 = ((Qicat5*exp((-((Dcat5)*t))/12))*30) + Qcat5;
end				
Qcat5sales =(Qcat5*3.71*1000*0.8);

for i = 1:category_6
Qcat6 = ((Qicat6*exp((-((Dcat6)*t))/12))*30) +Qcat6;
end
Qcat6sales =(Qcat6*96.29*0.8);

for i = 1:category_7
Qcat7 = ((Qicat7*exp((-((Dcat7)*t))/12))*30) +Qcat7;
end
Qcat7sales =(Qcat7*96.29*0.8);

for i = 1:category_8
Qcat8= ((Qicat8*exp((-((Dcat8)*t))/12))*30) +Qcat8;
end
Qcat8sales =(Qcat8*96.29*0.8);

for i = 1:category_9
Qcat9 = ((Qicat9*exp((-((Dcat9)*t))/12))*30) + Qcat9;
end
Qcat9sales =(Qcat9*3.71*1000*0.8);

for i = 1:category_10
Qcat10 = ((Qicat10*exp((-((Dcat10)*t))/12))*30) + Qcat10;
end
Qcat10sales =(Qcat10*3.71*1000*0.8);

for i = 1:category_11
Qcat11 = ((Qicat11*exp((-((Dcat11)*t))/12))*30) + Qcat11;
end
Qcat11sales =(Qcat11*3.71*1000*0.8);

Qgtot = Qcat1 + Qcat2 + Qcat3 + Qcat4 + Qcat5 + Qcat9 + Qcat10 + Qcat11; %total gas production
QLtot = Qcat6 + Qcat7 + Qcat8; %total oil production
Qg= Qgtot +Qg;
Qgavg=Qg/runs %average gas production based on all MC runs
QL= QLtot+QL;
QLavg= QL/runs %average oil production based on all MC runs
end
Qgtotsales=(Qcat1sales+Qcat2sales+Qcat3sales+Qcat4sales+Qcat5sales+Qcat9sales+Qcat10sales+Qcat11sales)+Qgtotsales; %total gas sales
avg_gsales=Qgtotsales/runs; %average sales from gas based on all MC runs
QLtotsales=(Qcat6sales+Qcat7sales+Qcat8sales)+QLtotsales; %total oil sales
avg_Lsales=QLtotsales/runs; %average sales from oil based on all MC runs
drilling_cost=(700000*120); %drilling cost of 120 wells
comp_cost=275000*count_prod+comp_cost;  %completion cost for production wells 
avg_compcost=(comp_cost/runs);  %average completion cost for production wells
opex2=(2000*count_prod*180); %operational expenses of production wells for remaining 15 years
tot_opex=opex1+opex2+tot_opex; %total operational expenses for production wells for 20 years
avg_opex=tot_opex/runs; %average operating expenses for production wells
exp_sales=(avg_gsales+avg_Lsales); %sales without tax deductions
tot_sales=(exp_sales-(0.071*exp_sales)); %total sales after tax deductions
tot_investment=drilling_cost+avg_compcost+avg_opex+5000000+50765000; %total investment for 20 years project
ROI=(tot_sales/tot_investment); %return on investment

figure (1)
plot(runs,Qgavg,'--rs','LineWidth',2,...
               'MarkerEdgeColor','b',...
               'MarkerFaceColor','y',...
               'MarkerSize',7)
           hold on
xlabel('Number of MC runs','FontSize',8)
ylabel('cummulative gas production (mmscf)','FontSize',8)
title('\it{20 years MC simulation for 120 wells}','FontSize',10)

figure (2)
plot(runs,QLavg,'--rs','LineWidth',2,...
               'MarkerEdgeColor','y',...
               'MarkerFaceColor','m',...
               'MarkerSize',7)
           hold on
xlabel('Number of MC runs','FontSize',8)
ylabel('cummulative oil production (bbl)','FontSize',8)
title('\it{20 years MC simulation for 120 wells}','FontSize',10)

disp([('Qgavg is') num2str(Qgavg)])
disp([('QLavg is') num2str(QLavg)])

figure(3)
plot(runs,ROI,'--rs','LineWidth',2,...
               'MarkerEdgeColor','r',...
               'MarkerFaceColor','g',...
               'MarkerSize',7)
           hold on

xlabel('Number of MC runs','FontSize',8)
ylabel('ROI (return on investment)','FontSize',8)
title('\it{20 years MC simulation for 120 wells}','FontSize',10)

end