# ModuleYourPrintsLibrary
MYPL is an OpenSCAD library (free as freedom, MIT licence) designed to separate the components of your projects in order to become modular (exchangeable / removable).

# How it's works

It has been designed to be installed radially, so all the top surface is available to 3D-print.

Illustrating example (in red) :

![Preview](https://github.com/Jimskapt/ModuleYourPrintsLibrary/raw/Mark1/pictures/ReadmePreview-1.png?raw=true "Example")

A sectional view of the principle : 
![Preview](https://github.com/Jimskapt/ModuleYourPrintsLibrary/raw/Mark1/pictures/ReadmePreview-2.png?raw=true "Example")

Open this 3D models in your web browser :
- [plain view](https://github.com/Jimskapt/ModuleYourPrintsLibrary/blob/Mark1/examples/ReadmePreview.stl)
- [section view](https://github.com/Jimskapt/ModuleYourPrintsLibrary/blob/Mark1/examples/ReadmePreview-half.stl)

## Using/install library in OpenSCAD

Just once (installing) :
```
cd ../ #(if initialy you was in "YourProjectFolder")
git clone https://github.com/Jimskapt/ModuleYourPrintsLibrary.git
cd ModuleYourPrintsLibrary
git checkout Mark1
cd ../YourProjectFolder
```

After that, each time you need to use MYPL Mark1, add following line in top of your file :

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

NB :
- margin is the space between male and female form. Warning : if you set margin=1, that's mean there is 0.5mm on the left and 0.5 on the right.
- deep is the additional length to shape its purpose (that is the length of the "tunnel" for male form).
- thetaA is the angle of the clip in the direction of insertion.
- thetaB is the angle of the clip in the direction of extraction.

## Extract the male form
You can use a clamp to pull-out the male form from female form.
![Preview](https://github.com/Jimskapt/ModuleYourPrintsLibrary/raw/Mark1/pictures/extractMaleForm.jpg?raw=true "Example")

## Test conditions

O.S. : Archlinux
Software : OpenSCAD 2015.03-2 and 2015.03-3
Printer : Dagoma Discovery 200
Material : PLA Grey Octofiber

# Positive aspects of this design
- You only need a 3D printer to use it
- Robust conception (as material can withstand)

# Negative aspects of this design

- You will probably need use support in order to print female form.
- You can not draw the female form too deeply otherwise you can't extract male form
