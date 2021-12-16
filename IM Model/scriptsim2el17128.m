%% Simulation 2: Induction Motor
clearvars;
clc;
%% Characteristics
Rs = 2.2667; LM = 0.1237; Lsigma = 0.0227; RR = 0.8197; np = 2;
%%%%%%%%%%%%%%%%%%%%%
Vn = 230*sqrt(2); J = 0.08; K = 1/sqrt(2); wbase = 314.15;
%%%%%%%%%%%%%%%%%%%%%
b1 = 0.1796; b2 = 0.0012; tL = 26.8;
%%%%%%%%%%%%%%%%%%%%%
sw1 = 1; sw2 = 1; sw3 = 1;
%%%%%%%%%%%%%%%%%%%%%
f1 = 50; f2 = 25;
%% Simulation for line-connected IM and nominal torque
x = sim('sim2el17128');
%% Simulation for tau_L=b1wm, tau_L=b2(wm)^2
sw1 = 0;
y = sim('sim2el17128');
sw2 = 0;
z = sim('sim2el17128');
%% Simulation for smaller and bigger RR
sw1 = 1; sw2 = 1; tL = 0;
RR = 2*RR;
x1 = sim('sim2el17128');
RR = RR/4;
x2 = sim('sim2el17128');
RR = 16*RR;
x3 = sim('sim2el17128');
RR = 0.8197;
%% Volt-per-Hertz control
sw3 = 0; simtime = 10; tL = 26.8;
u = sim('sim2el17128');