module half_female_form(deep=0,margin=1)
{
  union()
  {
    translate([+2-(5-margin-deep)/2,0,(10+margin)/2/2])
      cube([margin+deep+20,10+margin,(10+margin)/2],center=true);
    
    translate([+2-(5-margin-deep)/2,0,10/2-(2)/2])
      cube([margin+deep+20,20+2*margin,2+margin],center=true);
    
    translate([-5.5+2-1,-6/2,10/2+0.1])
      cube([5.5-2,6,3+0.5-0.1]);
  }
}
function half_female_x(deep=0,margin=1) = margin+deep+20;
function half_female_y(deep=0,margin=1) = 20+2*margin;
function half_female_z(deep=0,margin=1) = 10/2+3.5;

module half_male_form(thetaA=60,thetaB=30,margin=1)
{
  union()
  {
    difference()
    {
      union()
      {
        translate([0,0,10/2/2])
          cube([20,10,10/2],center=true);

        translate([0,0,10/2-2/2])
            cube([20,20,2],center=true);
      }
      
      translate([0,0,10/2/2])
        cube([15,5,10/2+1],center=true);
      
      for(i=[-1:+2:+1])
      {
        translate([20/2-5/2+1,i*(10-2+1)/2,(10/2-2-1)/2])
          cube([5+1,2+1,10/2-2+1],center=true);
      }
    }
    
    rotate([90,0,0])
    {
      linear_extrude(height=10/2-margin,center=true)
      {
        polygon([
                  [15/2+1,10/2-2],
                  [-(tan(thetaA)+tan(thetaB))*3+1,10/2-2],
                  [-(tan(thetaA)+tan(thetaB))*3,10/2],
                  [-(tan(thetaA)+tan(thetaB))*3+tan(thetaA)*3,10/2+3],
                  [0,10/2],
                  [15/2+1,10/2],
                ]);
      }
    }
  }
}
function half_male_x(thetaA=60,thetaB=30,margin=1) = 20;
function half_male_y(thetaA=60,thetaB=30,margin=1) = 20;
function half_male_z(thetaA=60,thetaB=30,margin=1) = 10/2;