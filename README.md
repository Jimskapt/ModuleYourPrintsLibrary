# ModuleYourPrintsLibrary
An OpenSCAD library designed to separate the components of your projects in order to become modular (exchangeable / removable)

# How it's works

It has been designed to be installed radially, so all the top surface is available to 3D-print.

(example pictures coming soon)

## Using/install library in OpenSCAD

```
cd ../ #(if initialy you was in "YourProjectFolder")
git clone https://github.com/Jimskapt/ModuleYourPrintsLibrary.git
cd ModuleYourPrintsLibrary
git checkout Mark1
cd ../YourProjectFolder
```

After that, open your file in OpenSCAD, and add following line in top of your file :

```
use <../ModuleYourPrintsLibrary/library.scad>;
```

You can now use instructions in your project :
- `half_female_form(deep=0,margin=1)` (don't forget to use it inside `difference()`)
  - You can have sizes of this block with instuctions :
    - deep :	`half_female_x(deep=0,margin=1)`
    - width :	`half_female_y(deep=0,margin=1)`
    - height :	`half_female_z(deep=0,margin=1)`
- `half_male_form(thetaA=60,thetaB=30,margin=1)`
  - You can have sizes of this block with instuctions :
    - deep :	`half_male_x(thetaA=60,thetaB=30,margin=1)`
    - width :	`half_male_y(thetaA=60,thetaB=30,margin=1)`
    - height :	`half_male_z(thetaA=60,thetaB=30,margin=1)`

## Extract
You can use a clamp to pull-out the male form from female form.
(illustrating picture coming soon)

# Positive aspects of this design
- You only need a 3D printer to use it
- Robust conception (as material can withstand)

# Negative aspects of this design

- You will probably need use support in order to print female form.
- You can not draw the female form too deeply otherwise you can't extract male form
