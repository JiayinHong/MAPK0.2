%% fig1 dox constant regulation
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('dox_OspF');
[tque,yque]=ode23tb(@(t,y) dox_OspF(t,y,param),tspan,y0);

figure; set(gcf,'Position',[360 208 831 490])
subplot(2,2,1)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','dox-OspF'})

subplot(2,2,3)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','dox-OspF'})

param = setParameter('dox_NleE');
[tque,yque]=ode23tb(@(t,y) dox_NleE(t,y,param),tspan,y0);
subplot(2,2,2)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','dox-NleE'})

subplot(2,2,4)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','dox-NleE'})
linkaxes

%% fig2 negative feedback regulation
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('nfb_OspF');
y0 = zeros(1,7);
[tque,yque]=ode23tb(@(t,y) nfb_OspF(t,y,param),tspan,y0);

figure; set(gcf,'Position',[360 208 831 490])
subplot(2,2,1)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','nfb-OspF'})

subplot(2,2,3)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','nfb-OspF'})

param = setParameter('nfb_NleE');
[tque,yque]=ode23tb(@(t,y) nfb_NleE(t,y,param),tspan,y0);
subplot(2,2,2)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','nfb-NleE'})

subplot(2,2,4)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','nfb-NleE'})
linkaxes

%% fig3 cross inhibitive regulation
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('ci_OspF');
y0 = zeros(1,7);
[tque,yque]=ode23tb(@(t,y) ci_OspF(t,y,param),tspan,y0);

figure; set(gcf,'Position',[360 208 831 490])
subplot(2,2,1)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','ci-OspF'})

subplot(2,2,3)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','ci-OspF'})

param = setParameter('ci_NleE');
[tque,yque]=ode23tb(@(t,y) ci_NleE(t,y,param),tspan,y0);
subplot(2,2,2)
plot(tref,yref(:,5),'--','LineWidth',2); title('MAPK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','ci-NleE'})

subplot(2,2,4)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2);
set(gca,'FontSize',15); legend({'No-ctrl','ci-NleE'})
linkaxes