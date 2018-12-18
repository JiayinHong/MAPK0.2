%% None-control
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'-','LineWidth',2); title('phosphorylated ERK')
hold on
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'-','LineWidth',2); title('nuclear NFkB')
hold on
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'LineWidth',2); title('Phosphatase')
set(gca,'FontSize',15)
subplot(3,2,4)
plot(tref,yref(:,4),'LineWidth',2); title('IkB protein')
set(gca,'FontSize',15)
subplot(3,2,5)
plot(tref,yref(:,5),'LineWidth',2); title('ERK-GFP')
set(gca,'FontSize',15)
subplot(3,2,6)
plot(tref,yref(:,6),'LineWidth',2); title('NFkB-GFP')
set(gca,'FontSize',15)
% linkaxes

%% dox-OspF
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('dox_OspF');
[tque,yque]=ode23tb(@(t,y) dox_OspF(t,y,param),tspan,y0);

figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','dox-OspF'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','dox-OspF'})
% linkaxes

%% dox-NleE
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('dox_NleE');
[tque,yque]=ode23tb(@(t,y) dox_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','dox-NleE'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','dox-NleE'})
% linkaxes

%% nfb-OspF
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);
y0 = zeros(1,7);
param = setParameter('nfb_OspF');
[tque,yque]=ode23tb(@(t,y) nfb_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','nfb-OspF'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','nfb-OspF'})
% linkaxes


%% nfb-NleE
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);
y0 = zeros(1,7);
param = setParameter('nfb_NleE');
[tque,yque]=ode23tb(@(t,y) nfb_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','nfb-NleE'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','nfb-NleE'})
% linkaxes

%% ci-OspF
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);
y0 = zeros(1,7);
param = setParameter('ci_OspF');
[tque,yque]=ode23tb(@(t,y) ci_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','ci-OspF'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','ci-OspF'})
% linkaxes

%% ci-NleE
tspan = [0 2880];
y0 = zeros(1,6);
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);
y0 = zeros(1,7);
param = setParameter('ci_NleE');
[tque,yque]=ode23tb(@(t,y) ci_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 208 831 490])
subplot(3,2,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('phosphorylated ERK')
hold on
plot(tque,yque(:,1),'LineWidth',2);
set(gca,'FontSize',15)

subplot(3,2,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('nuclear NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,3)
plot(tref,yref(:,3),'--','LineWidth',2); title('Phosphatase')
hold on
plot(tque,yque(:,3),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,4)
plot(tref,yref(:,4),'--','LineWidth',2); title('IkB protein')
hold on
plot(tque,yque(:,4),'LineWidth',2)
set(gca,'FontSize',15)

subplot(3,2,5)
plot(tref,yref(:,5),'--','LineWidth',2); title('ERK-GFP')
hold on
plot(tque,yque(:,5),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','ci-NleE'})

subplot(3,2,6)
plot(tref,yref(:,6),'--','LineWidth',2); title('NFkB-GFP')
hold on
plot(tque,yque(:,6),'LineWidth',2)
set(gca,'FontSize',15); legend({'No-ctrl','ci-NleE'})
% linkaxes
