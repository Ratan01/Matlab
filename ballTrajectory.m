%% Ball
clc;
clear all;
close all;
%% Define parameter and initial conditions
param.g = 9.81;
param.kappa = 0.006;
u0 = 35*cos(pi/4);
v0 = 35*sin(pi/4);

%% setting up and solving the problem
X0 = [0; 0;
    u0; v0];
tSpan = [0 20];
[tOut, XOut] = ode45(@ballTrajectoryFun,tSpan,X0,[],param);

%% Display the result
figure(1);
plot(XOut(:,1),XOut(:,2),'bo');
xlabel('x (m)'); ylabel('y (m)');

%% Animating result
exitCode = ballAnimation(tOut,XOut);