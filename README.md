# Humanoid-Kinematics-Simulation
Humanoid Robot Kinematics Simulation Using MATLAB Teach Toolbox.

Read PDF file for more info.

<img width="415" alt="image" src="https://user-images.githubusercontent.com/39452919/179138160-4621cb46-8e32-4f88-bfd6-5b6e32f0bf92.png">

Link [THETA D A ALPHA SIGMA OFFSET]
Theta: Joint Angle
D: Link offset
A: Link length
ALPHA: Link Twist
OFFSET: a constant displacement between the user joint angle vector and the true kinematic solution.
SIGMA: SIGMA=0 for a revolute & 1 for a prismatic joint.


Init Environment

Defining Base as Platform

Defining DH Parameters for platform, Right Arm, Left Arm, Left Leg, and Right Leg.

Assembeling Platform & Right Arm.

Assembeling Platform & Left Arm.

Assembeling Platform & Left Leg.

Assembeling Platform & Right Leg.

Getting Jacobians.

Solving Forward kinematics to Get Torques for Each Joints.

Solving Inverse kinematics to Get the End-effector Pose.
