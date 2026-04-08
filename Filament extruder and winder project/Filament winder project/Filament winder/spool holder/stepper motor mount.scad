//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);






////////////////////////////////////////////////////////
//Stepper motor mount
////////////////////////////////////////////////////////



difference(){
//stepper motor plate
cube([42,6,42], center = true);
    
//middle hole    
rotate([90,0,0]) cylinder(h = 20, d=23, $fn = 180, center = true);    

//holes for stepper motor screws
translate([15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([-15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);

translate([15.5,0,-15.5]) rotate([90,0,0]) cylinder(h = 20, d=3, $fn = 180, center = true);
    
}    


/////////////////////////////////////////////////////////
 