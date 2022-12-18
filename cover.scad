$fs=0.2;
$fa=2;
// inner diameter
diameter = 36;
//inner height
height = 2.5;
//diameter of hole for lamp nipple
hole_diameter=10.2;
//width of lip
lip_width=3;


difference(){
  union(){
    //positive
    translate([0, 0, height]){
      cylinder(r=(diameter/2)+(lip_width/2), h=height);
    } 
    cylinder(r1 = (diameter/2), r2=(diameter/2)+0.1, h=height);
  }
  //negative
  cylinder(r=hole_diameter/2, h=height*2);
}




