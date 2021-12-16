%% FIGURES SCRIPT
clc;
%% DOKIMH NO-LOAD KAI FULL-LOAD
% GRAFIKES EKSODOY GIA KENO FORTIO KAI STH 
% SYNEXEIA SYNDESH ONOMASTIKOY
figure(1)
subplot(2,2,1);
    plot(x.wr);
    grid on;
    title('Motor Speed');
    xlabel('Time [sec]');
    ylabel('Speed [rad/sec]');
subplot(2,2,2);
    plot(x.tau_e);
    grid on;
    title('Electrical Torque');
    xlabel('Time [sec]');
    ylabel('Torque [Nm]');
subplot(2,2,3);
    plot(x.i_ampl);
    grid on;
    title('Current Amplitude');
    xlabel('Time [sec]');
    ylabel('Current [A]');
subplot(2,2,4);
    plot(x.psi_ampl);
    grid on;
    title('Rotor Flux Amplitude');
    xlabel('Time [sec]');
    ylabel('Flux [Wb]');
figure(2)
subplot(2,1,1);
    plot(x.theta);
    grid on;
    title('Theta at wr = 314.15 rad/sec');
    xlabel('Time [sec]');
    ylabel('Theta [rad]');
    axis([2 2.1 0 7]);
subplot(2,1,2);
    plot(x.Idq);
    grid on;
    title('Current at dq frame');
    legend('Id','Iq');
    xlabel('Time [sec]');
    ylabel('Current [A]');
figure(3)
    plot(x.psidq);
    grid on;
    title('Rotor Flux at dq frame');
    legend('ø_d','ø_q');
    xlabel('Time [sec]');
    ylabel('Flux [Wb]');

%% CURRENT CONTROL
% PROSOMOIWSH EPEITA APO EFARMOGH DIANYSMATIKOY ELEGXOY
figure(4)
    plot(x.wr);
    hold on;
    plot(y.wr);
    grid on;
    title('Compare Motor Speed');
    legend('ù_r before','ù_r after');
    xlabel('Time [sec]');
    ylabel('Speed [rad/sec]');
%     axis([0 10 0 370]);
figure(5)
subplot(3,1,1);
    plot(y.tau_e);
    grid on;
    title('Electrical Torque');
    xlabel('Time [sec]');
    ylabel('Torque [Nm]');
    axis([0 10 0 40]);
subplot(3,1,2);
    plot(y.i_ampl);
    grid on;
    title('Current Amplitude');
    xlabel('Time [sec]');
    ylabel('Current [A]');
subplot(3,1,3);
    plot(y.psi_ampl);
    grid on;
    title('Rotor Flux Amplitude');
    xlabel('Time [sec]');
    ylabel('Flux [Wb]');
    axis([0 10 0 1.2]);
figure(6)
    plot(x.wr);
    hold on;
    plot(y.wr);
    hold on;
    plot(y1.wr);
    grid on;
    title('Compare Motor Speed');
    legend('ù_r before','ù_r after','ù_r after & i_q^r^e^f');
    legend('location','best');
    xlabel('Time [sec]');
    ylabel('Speed [rad/sec]');
    axis([0 5 0 370]);
figure(7)
    plot(y.Idq);
    grid on;
    title('Current at dq frame');
    legend('Id','Iq');
    xlabel('Time [sec]');
    ylabel('Current [A]');
%% SATURATION & ANTIWINDUP
figure(8)
subplot(2,1,1);
%     plot(z.wr);
%     hold on;
    plot(u.wr);
    grid on;
    title('Motor Speed');
%    legend('Speed without antiwindup','Speed with antiwindup');
    xlabel('Time [sec]');
    ylabel('Speed [rad/sec]');
    axis([0 10 0 370]);
subplot(2,1,2);
%     plot(z.tau_e);
%     hold on;
    plot(u.tau_e);
    grid on;
    title('Electrical Torque');
%    legend('Torque without antiwindup','Torque with antiwindup');
    xlabel('Time [sec]');
    ylabel('Torque [Nm]');
    axis([0 10 0 40]);
figure(9)
    plot(z.Idq);
    grid on;
    title('Current at dq frame');
    legend('Id','Iq');
    xlabel('Time [sec]');
    ylabel('Current [A]');
figure(10)
subplot(2,1,1);
%     plot(z.i_ampl);
%     hold on;
    plot(u.i_ampl);
    grid on;
    title('Current Amplitude');
%    legend('Current without antiwindup','Current with antiwindup');
    xlabel('Time [sec]');
    ylabel('Current [A]'); 
subplot(2,1,2);
%     plot(z.psi_ampl);
%     hold on;
    plot(u.psi_ampl);
    grid on;
    title('Rotor Flux Amplitude');
%     legend('Flux without antiwindup','Flux with antiwindup');
    xlabel('Time [sec]');
    ylabel('Flux [Wb]');
figure(11)
    plot(z.i_ampl);
    hold on;
    plot(u.i_ampl);
    grid on;
    title('Current Amplitude');
    legend('Current without antiwindup','Current with antiwindup');
    xlabel('Time [sec]');
    ylabel('Current [A]');
    axis([0 0.005 0 12]);