function dy = dox_NleE(t,y,param)

% unwrap the parameters
ERKtot = param.ERKtot;
Ntot = param.Ntot;
IKK = param.IKK;
if t<480
    TCR = 0;
else
    TCR = param.TCR;
end
KM = param.KM;
KE = param.KE;
KI = param.KI;
KN = param.KN;
KR = param.KR;
KT = param.KT;
Kpho = param.Kpho;
kp = param.kp;
kd1 = param.kd1;
a = param.a;
b = param.b;
knin = param.knin;
kiin = param.kiin;
gamma1 = param.gamma1;
gamma2 = param.gamma2;
m = param.m;
aP = param.aP;
aE = param.aE;
aN = param.aN;
gammaGFP = param.gammaGFP;
tau = param.tau;
alpha = param.alpha;

kout = param.kout;
NleE = param.NleE;
KO2 = param.KO2;
% #####################

dy=zeros(6,1);
% #####################
% y(1): ERKp,phosphorylated ERK
% y(2): NFkBn,nuclear NFkB
% y(3): Phosphatase of ERKp
% y(4): IkB protein
% y(5): ERK-GFP
% y(6): NFkB-GFP
% #####################
dy(1) = tau*(kp*(ERKtot-y(1))*(aE+TCR) - kd1*y(3)*y(1)/(y(1)+KE));
dy(2) = tau*(knin*(Ntot-y(2))*(alpha*KI/(KI+y(4))+TCR) - kiin*y(4)*y(2)/(KN+y(2)) - kout*NleE*y(2)/(y(2)+KO2));
dy(3) = tau*(aP*y(1)/(y(1)+Kpho) + aN*y(2)^2/(y(2)^2+KM) - gamma1*y(3));
dy(4) = tau*(a+b*y(2)^2/(y(2)^2+KT) - IKK*y(1)/(y(1)+KR)*(Ntot-y(2))*y(4)/(KI+y(4)) - gamma2*y(4));
dy(5) = tau*(m*y(1) - gammaGFP*y(5));
dy(6) = tau*(m*y(2) - gammaGFP*y(6));
end