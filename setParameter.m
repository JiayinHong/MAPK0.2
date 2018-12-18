function param=setParameter(model_name)

param = struct();

param.ERKtot = 1;
param.Ntot = 1;
param.IKK = 3;
param.aE = 0.01;
param.TCR = 9;
param.KM = 0.5;
param.KE = 0.01;
param.KD = 0.001;
param.KI = 10;
param.KN = 0.02;
param.KR = 0.25;
param.KT = 1;
param.Kpho = 0.2;
param.aP = 0.7;
param.aN = 2;
param.kp = 16.2;
param.kd1 = 1.02;
param.ktl = 0.0024;
param.a = 0.07;
param.b = 0.15;
param.knin = 1;
param.kiin = 1;
param.gamma1 = 0.005;
param.gamma2 = 0.001;
param.m = 100;
param.gammaGFP = 0.06;
param.alpha = 5;
param.tau = 0.4;


switch model_name
    
    case 'dox_OspF'
        param.OspF = 100;
        param.kd2 = 1;
        param.KO1 = 0.01;
        
    case 'dox_NleE'
        param.NleE = 8;
        param.kout = 1;
        param.KO2 = 0.01;
        
    case 'nfb_OspF'
        param.kd2 = 1;
        param.KO1 = 0.5;
        param.aO = 3;
        param.Knode1 = 0.2;
        param.gamma3 = 0.003;
        
    case 'nfb_NleE'        
        param.kout = 10;
        param.KO2 = 0.5;
        param.aNleE = 0.01;
        param.Knode2 = 0.2;
        param.gamma3 = 0.003;
        
    case 'ci_OspF'
        param.kd2 = 1;
        param.KO1 = 0.1;
        param.aO = 2;
        param.Knode1 = 0.2;
        param.gamma3 = 0.003;
        
    case 'ci_NleE'
        param.kout = 10;
        param.KO2 = 0.5;
        param.aNleE = 0.02;
        param.Knode2 = 0.3;
        param.gamma3 = 0.003;
        
    case 'None_ctrl'
        % do nothing, the default set
        
end

end