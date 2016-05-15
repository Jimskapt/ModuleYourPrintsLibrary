use <../library.scad>;

half_view=true;

difference()
{
  for(angle=[0:180:180])
  {
    rotate([angle,0,0])
    {
      difference()
      {
        translate([0,0,(half_female_z(deep=35/2)+2+0.5)/2])
        cylinder(h=half_female_z(deep=35/2)+2,d=35,center=true,$fn=600);
        half_female_form(deep=35/2);
      }
      
      color("red")
        half_male_form();
    }
  }
  
  if(half_view)
    translate([-100/2,0,-100/2])
      cube([100,100,100]);
}