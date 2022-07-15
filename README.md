# Humanoid-Kinematics-Simulation
Humanoid Robot Kinematics Simulation Using MATLAB Teach Toolbox.

**Report 1.0.1**

**Simulation of Humanoid using MATLAB Teach Toolbox**

**By:**

**Mike**

**Version: 1.0.7.13.2022**

**Date: 7/13/2022**

**Contents**

[Introduction [3](#introduction)](\l)

[DH Parameters [4](#dh-parameters)](\l)

[Algorithm for modified D-H Convention:
[6](#algorithm-for-modified-d-h-convention)](\l)

[Structure [8](#structure)](\l)

[Solid Works Model [9](#solid-works-model)](\l)

[Free-Body Diagram [10](#free-body-diagram)](\l)

[Results [11](#results)](\l)

[Final Model in MATLAB Teach Toolbox
[12](#final-model-in-matlab-teach-toolbox)](\l)

[Denavit-Hartenberg Parameters [12](#denavit-hartenberg-parameters)](\l)

[Platform [12](#platform)](\l)

[Left Arm [12](#left-arm)](\l)

[Right Arm [13](#right-arm)](\l)

[Left Leg [13](#left-leg)](\l)

[Right Leg [13](#right-leg)](\l)

[Jacobian Matrices [14](#jacobian-matrices)](\l)

[Left Arm [14](#left-arm-1)](\l)

[Right Arm [14](#right-arm-1)](\l)

[Left Leg [14](#left-leg-1)](\l)

[Right Leg [14](#right-leg-1)](\l)

# 

# Introduction

## DH Parameters

Denavit-Hartenberg (DH) comes in variety of modified and standard. The
link and joint parameters in the modified convention as shown in figure
below are as follows:

![](media/image1.png){width="5.759027777777778in"
height="2.9694444444444446in"}![](media/image2.png){width="5.754166666666666in"
height="1.2in"}The D-H parameters are determined as per table below.

![](media/image3.png){width="5.245833333333334in"
height="0.9583333333333334in"}

![](media/image4.png){width="5.784027777777778in" height="1.6875in"}

![](media/image5.png){width="5.7659722222222225in"
height="3.123611111111111in"}![](media/image4.png){width="5.784027777777778in"
height="3.2847222222222223in"}

![](media/image6.png){width="5.7659722222222225in"
height="2.7194444444444446in"}

## Algorithm for modified D-H Convention:

![](media/image7.png){width="5.761805555555555in"
height="2.313888888888889in"}![](media/image8.png){width="5.7659722222222225in"
height="5.433333333333334in"}

![](media/image7.png){width="5.761805555555555in"
height="2.376388888888889in"}![](media/image7.png){width="5.761805555555555in"
height="1.8555555555555556in"}

Two additional parameters are Sigma and Offset.

Link \[THETA, D ,A ,ALPHA ,SIGMA ,OFFSET\]

OFFSET is a constant displacement between the user joint angle vector
and the true kinematic solution. SIGMA=0 for a revolute and 1 for a
prismatic joint.

# 

# Structure

1

## Solid Works Model

[ُخمهی]{dir="rtl"}

![](media/image9.png){width="6.1417322834645665e-3in"
height="1.2308617672790902e-2in"}

## Free-Body Diagram

Complete free-body diagram of the humanoid looks like below.

However, we cannot get the DH parameters for the whole robot at once.
Therefore, we split it to 5 parts: Left Arm, Right Arm, Base, Left Leg,
and Right Leg. Then we can start from the base and apply the DH
convention to get the DH parameters for each part.

# 

# Results

## Final Model in MATLAB Teach Toolbox

![](media/image10.png){width="5.759722222222222in"
height="2.9868055555555557in"}

## Denavit-Hartenberg Parameters

### Platform

![](media/image11.png){width="5.506944444444445in"
height="1.1597222222222223in"}

### Left Arm

![](media/image12.png){width="5.506944444444445in"
height="1.9902777777777778in"}

### Right Arm

![](media/image13.png){width="5.534722222222222in"
height="1.917361111111111in"}

### Left Leg

![](media/image14.png){width="5.506944444444445in"
height="2.254166666666667in"}

### Right Leg

![](media/image15.png){width="5.527777777777778in"
height="2.265277777777778in"}

## Jacobian Matrices

### Left Arm

![](media/image16.png){width="5.159722222222222in"
height="1.4569444444444444in"}

### Right Arm

![](media/image17.png){width="5.1875in" height="1.4444444444444444in"}

### Left Leg

![](media/image18.png){width="5.7625in" height="1.2520833333333334in"}

### Right Leg

![](media/image19.png){width="5.7625in" height="1.257638888888889in"}
