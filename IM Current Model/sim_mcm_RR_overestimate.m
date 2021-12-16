%% SIMULATION 4: IMPROVED VECTOR CONTROL - INDUCTION MOTOR
% YLOPOIHSH DIANYSMATIKOY ELEGXOY MHXANHS EPAGWGHS
%% PARAMETER SELECTION
% EPILOGH PARAMETRWN TASHS EISODOY
Vhat = 230*sqrt(2); f = 50; K = 1/sqrt(2); Un = 230;  
w = 2*pi*f;
phi_a = 0; phi_b = -2*pi/3; phi_c = -4*pi/3;
% EPILOGH PARAMETRWN MHXANHS
Rs = 2.2667; LM = 0.1237; Lsigma = 0.0227; RR = 0.8197; 
np = 2; J = 0.08; tL = 26.8; b1 = 0.0886; b2 = 0.0012;
% EPILOGH EKTIMHSEWN MHXANHS - CORRECT VALUES
psi_hat = 0.557;
LM_hat = LM; RR_hat = 1.4*RR; Rs_hat = Rs; Lsigma_hat = Lsigma;
% EPILOGH PARAMETRWN PLL
alphaP = 110;  
kpp = 2*alphaP/psi_hat; kip = alphaP*alphaP/psi_hat;
% EPILOGH PARAMETRWN ELEGKTH REYMATOS
Imax = 15; Inom = psi_hat/LM_hat; Iref = 9.185; Imin = 0.1*Inom; 
Idref = psi_hat/LM_hat; Iqref = sqrt(Iref^2-Idref^2); 
L = Lsigma_hat; R = Rs_hat + RR_hat; alphaC = log(9)/1e-3;
Ra = alphaC*L - R; Kp = alphaC*L; Ki = alphaC*(R+Ra);
% EPILOGH PARAMETRWN ELEGKTH TAXYTHTAS
wbase = 302.4;
alphaS = log(9);
ba = (2*K^2*(alphaS*J-b1))/(3*np^2); 
Kps = (2*K^2*alphaS*J)/(3*np^2); Kis = Kps*alphaS;
% MODIFIED CURRENT MODEL
wdelta = 0.2*wbase; lamda = 2;
% FIELD WEAKENING CONTROL
ba1 = (2*K^2*(alphaS*J-b1))/(3*np^2); 
Kps1 = (2*K^2*alphaS*J)/(3*np^2); Kis1 = Kps1*alphaS;
ksi = (Lsigma_hat + LM_hat)/Lsigma_hat;
% EPILOGH PARAMETRWN DIAKOPTWN
sw1 = 1; sw2 = 1; sw3 = 1; sw4 = 1; sw5 = 1; sw6=1; sw7=0;
%% CURRENT MODEL AND SPEED CONTROL
z3 = sim('sim4el17128');
clc;