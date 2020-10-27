%% Q1 b & d 

% num = 7.63*10^(-2);
% den = [1 , 1.15 , 0.28];
% system = tf(num,den);
% samples = 1000;
% input1 = ones(1,samples);
% input2 = 2*ones(1,samples);
% input3 = 3.67*ones(1,samples);
% t = linspace(0,100,samples);
% response1 = lsim(system,input1,t);
% response2 = lsim(system,input2,t);
% response3 = lsim(system,input3,t);
% plot(t,response1*100, 'LineWidth',2);
% hold on
% plot(t,response2*100, 'LineWidth',2);
% hold on
% plot(t,response3*100, 'LineWidth',2);
% grid on

%% Q2 b & c

% num = 25;
% den1 = conv([1,20],[1,4,25]);
% den2 = conv([1,10],[1,4,25]);
% den3 = conv([1,2],[1,4,25]);
% system1 = tf(num,den1);
% system2 = tf(num,den2);
% system3 = tf(num,den3);
% samples = 1000;
% input1 = ones(1,samples);
% t = linspace(0,5,samples);
% response1 = lsim(system1,input1,t);
% response2 = lsim(system2,input1,t);
% response3 = lsim(system3,input1,t);
% plot(t,response1/0.05 , 'LineWidth',2);
% hold on
% plot(t,response2/0.1, 'LineWidth',2);
% hold on
% plot(t,response3/0.5, 'LineWidth',2);
% grid on


%% Q2 
% num0 = 25;
% num1 = 25*[1,200];
% num2 = 25*[1,50];
% num3 = 25*[1,20];
% num4 = 25*[1,10];
% num5 = 25*[1,5];
% num6 = 25*[1,2];
% den1 = [1,4,25];
% system0 = tf(num0,den1);
% system1 = tf(num1,den1);
% system2 = tf(num2,den1);
% system3 = tf(num3,den1);
% system4 = tf(num4,den1);
% system5 = tf(num5,den1);
% system6 = tf(num6,den1);
% samples = 1000;
% input1 = ones(1,samples);
% t = linspace(0,5,samples);
% response0 = lsim(system0,input1,t);
% response1 = lsim(system1,input1,t);
% response2 = lsim(system2,input1,t);
% response3 = lsim(system3,input1,t);
% response4 = lsim(system4,input1,t);
% response5 = lsim(system5,input1,t);
% response6 = lsim(system6,input1,t);
% 
% plot(t,response0,'LineWidth',2,'DisplayName','No zero');
% hold on
% plot(t,response1/200 , 'LineWidth',2,'DisplayName','Zero at -200');
% hold on
% plot(t,response2/50, 'LineWidth',2,'DisplayName','Zero at -50');
% hold on
% plot(t,response3/20, 'LineWidth',2,'DisplayName','Zero at -20');
% hold on
% plot(t,response4/10, 'LineWidth',2,'DisplayName','Zero at -10');
% hold on
% plot(t,response5/5, 'LineWidth',2,'DisplayName','Zero at -5 ');
% grid on
% plot(t,response6/2, 'LineWidth',2,'DisplayName','Zero at -2 ');
% grid on
% legend

%% Q3 a

% num = [16,108,270];
% den = [1,21,108,270];
% system = tf(num,den);
% samples = 1000;
% input = ones(1,samples);
% t = linspace(0,5,samples);
% response = lsim(system,input,t);
% plot(t,response, 'LineWidth',2);
% grid on


%% Q1 - a


% m1 = -5:0.01:5;
% 
% m2 = 0:0.01:5;
% 
% k1 = (1+2*m1)./(2+m1);
% k2 = (1+2*m2)./(2+m2);
% 
% subplot(1,2,1)
% plot(m1,k1,'LineWidth',2,'DisplayName','Zero at -200');
% 
% subplot(1,2,2)
% plot(m2,k2,'LineWidth',2,'DisplayName','PP');
% 
% grid on


%% Q2 - a
% 
k1 = 35;
num1 = k1*[1 , 1];
den1 = [1,2,(k1+8),k1];
sys1 = tf(num1,den1);

k2 = 25;
num2 = k2*[1 , 1];
den2 = [1,2,(k2+8),k2];
sys2 = tf(num2,den2);


N=1000;
t=linspace(0.0,15,N);
u=ones(N,1);
y1=lsim(sys1,u,t);
y2=lsim(sys2,u,t);

%  subplot(1,2,1)
plot(t,y1,'DisplayName','K = 35');
hold on
%  subplot(1,2,2)
plot(t,y2,'DisplayName','K = 25');

% num = k*[1 , 1];
% den = conv(conv([1, 0] , [1,4]), [1,2,8]);
% sys = tf(num,den);

% bode(sys);
% margin(sys)
% title('Bode plot for open-loop transfer function')
grid on;