%% SIMULATION 1: DC MOTOR AND CONTROL
% MONTELOPOIHSH KAI ELEGXOS REYMATOS KAI TAXYTHTAS
% DC MHXANHS
clearvars;
%% PARAMETER SELECTION
% ONOMASTIKOI PARAMETROI MHXANHS
Vn = 120; In = 20; n = 3000; tn = 7;
wn = (n*2*pi)/60; Imax = 28; tL = tn; steptime = 0.3;
% HLEKTRIKA KAI MHXANIKA STOIXEIA MHXANHS
R=0.5; L = 2.5e-3; psi=0.35; J=0.001;
% KERDH ELEGXOY REYMATOS
alphaC = 2197; Kp = alphaC*L; Ki=alphaC*alphaC*L; 
Ra= alphaC*L - R;
% KERDH ELEGXOY TAXYTHTAS
alphaS = 0.1*alphaC; Kps = alphaS*J/psi; Kis = alphaS*Kps; 
ba = Kps; wref = 160;
% ARXIKOPOIHSH DIAKOPTWN
sw1 = 1; sw2 = 1;
sw3 = 1; sw4 = 1;
%% DC MOTOR MODEL
x1 = sim('sim1el17128');
%% CURRENT CONTROL
% KATASKEYH KAI PROSOMOIWSH ME ELEGXO REYMATOS
sw1 = 0;
x2 = sim('sim1el17128');
%% SPEED CONTROL
% KATASKEYH KAI PROSOMOIWSH ME ELEGXO TAXYTHTAS
sw2 = 0;
x3 = sim('sim1el17128');
%% мо-ba TEST
% AFAIRESH THS ba
ba = 0;
x4 = sim('sim1el17128');
%% мо-SPEED ANTIWINDUP TEST
% AFAIRESH ANTIWINDUP TAXYTHTAS
sw3=0; ba = Kps;
x5 = sim('sim1el17128');
%% NO-CURRENT ANTIWINDUP TEST
% AFAIRESH ANTIWINDUP REYMATOS
sw3 = 1; sw4 = 0;
x6 = sim('sim1el17128');
sw1 = 1; sw2 = 1;
sw3 = 1; sw4 = 1;