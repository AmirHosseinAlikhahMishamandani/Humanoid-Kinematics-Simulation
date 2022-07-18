%% ------------------------------------------------------------------------
%                      Kinematic Model of Humanoid Robot
%
%                                     Mike
%
%                               Date: 15/7/2022
%
%% ------------------------------- Init Env -------------------------------
clear;
close all;
clc;
pi = 3.14;
%% Link [THETA D A ALPHA SIGMA OFFSET]
%%  OFFSET is a constant displacement between the user joint angle vector 
%   and the true kinematic solution.
%% SIGMA SIGMA=0 for a revolute and 1 for a prismatic joint.
disp('------------------------------ DH Parameters  ');
%% ------------------------------ platform  -------------------------------
disp('------------------------------ Base  ');
platform=SerialLink([0 0 0 0],'name','platform','modified')
platform.base=[1 0 0 0;
               0 1 0 0;
               0 0 1 0;
               0 0 0 1;];  
platform.qlim = [0,0]; %Platform
%% ------------------------------ Right Arm -------------------------------           
RA(1)=Link([0        0.49077   0         0         0     0],'modified');  
RA(2)=Link([0        0.283     0         pi/2     0     -pi/2],'modified');
RA(3)=Link([0        0         0         pi/2      0     0],'modified');
RA(4)=Link([0        0         0.287     pi/2      0     0],'modified');
RA(5)=Link([0        0         0.287     pi/2         0     0],'modified');
Humanoid_Robot_RA=SerialLink(RA,'name','RIGHTARM');
RA(1).qlim = [0,0]; % Base for Upper body
RA(2).qlim = [deg2rad(-50),deg2rad(50)]; % Shoulder Pitch
RA(3).qlim = [0,deg2rad(60)]; % Shoulder Roll
RA(4).qlim = [0,deg2rad(140)]; % Elbow Pitch
RA(5).qlim = [0,0];%end-effector
%% -------------------------- Assembly Right Arm --------------------------
disp('------------------------------ Right Arm  ');
pRA=SerialLink([platform,Humanoid_Robot_RA],'name','RA')
view(3)
hold on
grid on
len_RA = length(RA);
init_RA = [];
for i=1:len_RA+1
    init_RA(i) = 0;
end
pRA.plot([init_RA],'scale',.5)
pRA.teach
hold on  
%% ------------------------------ Left Arm --------------------------------           
LA(1)=Link([0        0.49077   0         0         0     0],'modified');  
LA(2)=Link([0        -0.283     0         pi/2     0     -pi/2],'modified');
LA(3)=Link([0        0         0         pi/2      0     0],'modified');
LA(4)=Link([0        0         0.287     pi/2      0     0],'modified');
LA(5)=Link([0        0         0.287     pi/2         0     0],'modified');
Humanoid_Robot_LA=SerialLink(LA,'name','LEFTARM');
LA(1).qlim = [0,0]; % Base for Upper body
LA(2).qlim = [deg2rad(-50),deg2rad(50)]; % Shoulder Pitch
LA(3).qlim = [0,deg2rad(60)]; % Shoulder Roll
LA(4).qlim = [0,deg2rad(140)]; % Elbow Pitch
LA(5).qlim = [0,0]; %end-effector
%% -------------------------- Assembly Left Arm ---------------------------
disp('------------------------------ Left Arm  ');
pLA=SerialLink([platform,Humanoid_Robot_LA],'name','LA')
view(3)
hold on
grid on
axis([-1, 1, -1, 1, -1, 1]*0.9)
len_LA = length(LA);
init_LA = [];
for i=1:len_LA+1
    init_LA(i) = 0;
end
pLA.plot([init_LA],'scale',.5)
% pLA.teach
hold on
%% ------------------------------ Left Leg --------------------------------           
LL(1)=Link([0       -0.120       0            pi/2        0     0  ],'modified'); 
LL(2)=Link([0       0              0            pi/2        0    -pi/2  ],'modified');
LL(3)=Link([0       0              0            -pi/2        0    -pi/2 ],'modified');
LL(4)=Link([0       0              0.42       -pi/2         0    0 ],'modified');
LL(5)=Link([0       0        0.42            0        0     0],'modified');
LL(6)=Link([0       0.0772              0           pi/2            0   0],'modified');
LL(7)=Link([0       0              0          0            0   0],'modified');
Humanoid_Robot_LL=SerialLink(LL,'name','LEFTLEG');
LL(1).qlim = [deg2rad(-50),deg2rad(50)]; %Hip Pitch -50 to 50
LL(2).qlim = [deg2rad(-50.15923567),deg2rad(50.15923567)]; %Hip yaw -50.15923567 to 50.15923567
LL(3).qlim = [deg2rad(-5),deg2rad(5)]; %Hip roll -5 to 5
LL(4).qlim = [0,deg2rad(90)]; %knee 0 to 90
LL(5).qlim = [deg2rad(-45),deg2rad(45)]; %Ankle Pitch -45 to 45
LL(6).qlim = [deg2rad(-20),deg2rad(20)]; %Ankle Roll -20 to 20
LL(7).qlim = [0,0]; %end-effector
%% -------------------------- Assembly Left Arm ---------------------------
disp('------------------------------ Left Leg  ');
pLL=SerialLink([platform,Humanoid_Robot_LL],'name','LL')
view(3)
hold on
grid on
axis([-1, 1, -1, 1, -1, 1]*0.9)
len_LL = length(LL);
init_LL = [];
for i=1:len_LL+1
    init_LL(i) = 0;
end
pLL.plot([init_LL],'scale',.5)
% pLL.teach
hold on
%% ------------------------------ Right Leg --------------------------------           
RL(1)=Link([0       0.120       0            pi/2        0     0  ],'modified'); 
RL(2)=Link([0       0              0            pi/2        0    -pi/2  ],'modified');
RL(3)=Link([0       0              0            -pi/2        0    -pi/2 ],'modified');
RL(4)=Link([0       0              0.42       -pi/2         0    0 ],'modified');
RL(5)=Link([0       0        0.42            0        0     0],'modified');
RL(6)=Link([0       0.0772              0           pi/2            0   0],'modified');
RL(7)=Link([0       0              0           0            0   0],'modified');
Humanoid_Robot_RL=SerialLink(RL,'name','RightLEG');
RL(1).qlim = [deg2rad(-50),deg2rad(50)]; %Hip Pitch -50 to 50
RL(2).qlim = [deg2rad(-50.15923567),deg2rad(50.15923567)]; %Hip yaw -50.15923567 to 50.15923567
RL(3).qlim = [deg2rad(-5),deg2rad(5)]; %Hip roll -5 to 5
RL(4).qlim = [0,deg2rad(90)]; %knee 0 to 90
RL(5).qlim = [deg2rad(-45),deg2rad(45)]; %Ankle Pitch -45 to 45
RL(6).qlim = [deg2rad(-20),deg2rad(20)]; %Ankle Roll -20 to 20
RL(7).qlim = [0,0]; %end-effector
%% -------------------------- Assembly Right Arm --------------------------
disp('------------------------------ Right Leg  ');
pRL=SerialLink([platform,Humanoid_Robot_RL],'name','RL')
view(3)
hold on
grid on
axis([-1, 1, -1, 1, -1, 1]*0.9)
len_RL = length(RL);
init_RL = [];
for i=1:len_RL+1
    init_RL(i) = 0;
end
pRL.plot([init_RL],'scale',.5)
pRL.teach
hold on
%% -------------------------------- Jacobian ------------------------------
disp('------------------------------ Jacobians  ');
Q = zeros(7,len_LL);
Jacob_LL = pLL.jacobe(Q);
display(Jacob_LL)
Q = zeros(7,len_RL);
Jacob_RL = pRL.jacobe(Q);
display(Jacob_RL)
Q = zeros(7,len_LA);
Jacob_LA = pLA.jacobe(Q);
display(Jacob_LA)
Q = zeros(7,len_RA);
Jacob_RA = pRA.jacobe(Q);
display(Jacob_RA)
%% --------------------------- Forward kinematics -------------------------
disp('------------------------------ Forward kinematics  ');
Q = zeros(1,len_LL+1);
T_FK_LL = pLL.fkine(Q);
display(T_FK_LL)
Q = zeros(1,len_RL+1);
T_FK_RL = pRL.fkine(Q);
display(T_FK_RL)
Q = zeros(1,len_LA+1);
T_FK_LA = pLA.fkine(Q);
display(T_FK_LA)
Q = zeros(1,len_RA+1);
T_FK_RA = pRA.fkine(Q);
display(T_FK_RA)
%% --------------------------- Inverse kinematics -------------------------
disp('------------------------------ Inverse kinematics ');
Q = zeros(1,len_LL+1);
Q_IK_LL = pLL.ikine(T_FK_LL);
display(Q_IK_LL)
Q = zeros(1,len_RL+1);
Q_IK_RL = pRL.ikine(T_FK_RL);
display(Q_IK_RL)
Q = zeros(1,len_LA+1);
Q_IK_LA = pLA.ikine(T_FK_LA);
display(Q_IK_LA)
Q = zeros(1,len_RA+1);
Q_IK_RA = pRA.ikine(T_FK_RA);
display(Q_IK_RA)
%% --------------------- Joint forces due to payload ----------------------
disp('------------------------------ Joint forces due to payload  ');
disp('------------------------------ generalised joint force/torques due to a payload wrench ');
disp('------------------------------ Left Leg  ');
%W is a wrench vector applied at the end effector, W = [Fx Fy Fz Mx My Mz]'.
W = [0 0 -19.6133 0 0 0]';
T_LL = pLL.pay(W, Jacob_LL);
disp(T_LL);
disp('------------------------------ Right Leg ');
W = [0 0 -19.6133 0 0 0]';
T_RL = pRL.pay(W, Jacob_RL);
disp(T_RL);
disp('------------------------------ Left Arm  ');
W = [0 0 -19.6133 0 0 0]';
T_LA = pLA.pay(W, Jacob_LA);
disp(T_LA);
disp('------------------------------ Right Arm  ');
W = [0 0 -19.6133 0 0 0]';
T_RA = pRA.pay(W, Jacob_RA);
disp(T_RA);
%% ------------------------------------------------------------------------
