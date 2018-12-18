%% plot of dox-OspF
tspan = [0 2880];
y0 = [1, 1];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

% param = setParameter('dox_OspF');
% [tque,yque]=ode23tb(@(t,y) dox_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
% plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','dox-OspF'},'Location','best')
ylim([0 12])

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
% plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','dox-OspF'},'Location','best')
linkaxes

%% phase portrait
ErK = linspace(1,13,20);
NFkB = linspace(1,13,20);
[x,y] = meshgrid(ErK,NFkB);

a0E = 0.005;
a0N = 0.005;
aE = 0.2;
aN = 0.06;
K0E = 8;
K0N = 16;
gamma = 0.002;

% computing the vector field
u = zeros(size(x));
v = zeros(size(x));
f = @(t,Y) [a0E + aE*K0E/(K0E+Y(2)^3+Y(1)) - gamma*Y(1); ...
    a0N + aN*Y(1)/(K0N+Y(1)) - gamma*Y(2)];
t = 0;
for i=1:numel(x)
    Yprime = f(t,[x(i),;y(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
    Vmod = sqrt(u(i)^2+v(i)^2);
    u(i) = u(i)/Vmod;
    v(i) = v(i)/Vmod;
end

figure
quiver(x,y,u,v,'c')
xlabel('ErK'); ylabel('NFkB');
axis tight equal;

% plotting solutions on the vector field
hold on
h1=plot(yref(:,1),yref(:,2),'k','LineWidth',1.5);
plot(yref(1,1),yref(1,2),'bo') % starting point
plot(yref(end,1),yref(end,2),'ks') % ending point

% plotting nullclines

for aE=[0.1:0.05:0.3]
    syms ErK NFkB
nullcline1 = a0E + aE*K0E/(K0E+NFkB^3+ErK) - gamma*ErK == 0;
nullcline2 = a0N + aN*ErK/(K0N+ErK) - gamma*NFkB == 0;
himp=fimplicit([nullcline1 nullcline2],'LineWidth',2);
hold all
end
legend(himp,{'Nullcline of ErK','Nullcline of NFkB'})
% nullcline1 = @(ErK) a0N/gamma + aN/gamma .* ErK./(K0N+ErK);
% nullcline2 = @(ErK) ((((a0E+aE-gamma.*ErK)*K0E+a0E.*ErK-gamma.*ErK.^2))./(gamma.*ErK-a0E)) .^(1/3);
% ErK = linspace(1,13,20);
% h2=plot(ErK,nullcline1(ErK),'b','LineWidth',2);
% h3=plot(ErK,nullcline2(ErK),'r','LineWidth',2);

xlim([0.9 13]); ylim([0.9 13])

% legend([h2,h3],{'Nullcline1','Nullcline2'})
set(gca,'FontSize',15)
title('phase portrait')











