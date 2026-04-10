//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


difference(){
cylinder(h = 2, d=35, $fn = 180, center = true);

cylinder(h = 3, d=5.2, $fn = 180, center = true);

}

translate([20,0,-0.75]) cube([10,2,0.5], center = true);
 