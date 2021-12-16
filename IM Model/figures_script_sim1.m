%% FIGURES SCRIPT
%% DC MOTOR MODEL
% NO-LOAD AND FULL-LOAD TEST
figure(1)
subplot(2,1,1)
    plot(x1.wr)
    grid on;
    title('Motor Speed')
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
subplot(2,1,2)
    plot(x1.i)
    grid on;
    title('Armature Current')
    xlabel('Time [sec]')
    ylabel('Current [A]')
%% CURRENT CONTROL
% KATASKEYH KAI PROSOMOIWSH ME ELEGXO REYMATOS
figure(2)
subplot(2,1,1)
    plot(x2.i)
    grid on;
    title('Armature Current')
    xlabel('Time [sec]')
    ylabel('Current [A]')
    axis([0 0.5 -5 25]);
subplot(2,1,2)
    plot(x2.i)
    grid on;
    title('Armature Current')
    xlabel('Time [sec]')
    ylabel('Current [A]')
    axis([0.0995 0.1025 0 25]);
figure(3)
    plot(x1.wr)
    hold on;
    plot(x2.wr)
    grid on;
    title('Motor Speed')
    legend('Ы_r before', 'Ы_r after');
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
%% SPEED CONTROL
% KATASKEYH KAI PROSOMOIWSH ME ELEGXO TAXYTHTAS
figure(4)
    plot(x3.wr);
    axis([0 0.5 0 360])
    grid on;
    title('Motor Speed')
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
figure(5)
    plot(x3.i);
    hold on;
    plot(x3.iref);
    grid on;
    title('Armature Current: Compare iref and i')
    axis([0 0.4 0 35])
    legend({'i','iref'})
    xlabel('Time [sec]')
    ylabel('Current [A]')
%% мо-ba TEST
% AFAIRESH THS ba
figure(6)
    plot(x3.wr);
    hold on;
    plot(x4.wr);
    grid on;
    title('Compare Motor Speed')
    legend({'Speed with ba','Speed without ba'})
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
%% мо-SPEED ANTIWINDUP & NO-CURRENT ANTIWINDUP TEST
% AFAIRESH ANTIWINDUP TAXYTHTAS
% AFAIRESH ANTIWINDUP REYMATOS
figure(7)
subplot(2,1,1)
    plot(x3.wr);
    hold on;
    plot(x5.wr);
    grid on;
    title('Compare Motor Speed')
    legend({'Speed with anti-windup','Speed without anti-windup'})
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
subplot(2,1,2)
    plot(x3.i);
    hold on;
    plot(x5.i);
    grid on;
    axis([0 0.5 -20 35])
    title('Compare Current')
    legend({'Current with anti-windup','Current without anti-windup'})
    xlabel('Time [sec]')
    ylabel('Current [A]')
figure(8)
subplot(1,2,1)
    plot(x3.i);
    hold on;
    plot(x6.i);
    grid on;
    axis([0 0.5 0 35])
    title('Compare Current')
    legend({'Current with anti-windup','Current without anti-windup'})
    xlabel('Time [sec]')
    ylabel('Current [A]')
    axis([0.19 0.23 0 35])
subplot(1,2,2)
    plot(x3.i);
    hold on;
    plot(x6.i);
    grid on;
    axis([0 0.5 0 35])
    title('Compare Current')
    legend({'Current with anti-windup','Current without anti-windup'})
    xlabel('Time [sec]')
    ylabel('Current [A]')
    axis([0.29 0.5 0 35])
    
figure(9)
    plot(x3.wr);
    grid on;
    title('Motor Speed')
    xlabel('Time [sec]')
    ylabel('Speed [rad/sec]')
    axis([0.1 0.13 0 170]);
figure(10)
    plot(x3.i);
    hold on;
    plot(x6.i);
    grid on;
    axis([0 0.5 0 35])
    title('Compare Current')
    legend({'Current with anti-windup','Current without anti-windup'})
    xlabel('Time [sec]')
    ylabel('Current [A]')