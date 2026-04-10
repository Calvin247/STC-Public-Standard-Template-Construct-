//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);






difference(){
cube([45,30,10], center = true);

cylinder(h = 21, d=8.3, $fn = 180, center = true);
    
for(i=[-1,1]) translate([i*10,0,0]) rotate([90,0,0]) cylinder(h = 50, d=3.2, $fn = 180, center = true);

}







 