//Planned changes: length is increased by 20mm to get closer to spool






//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
    
    
union(){    
//translate([6,0,0]) cube([70,5,50], center = true);

//Front circles
for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 8, d=20, $fn = 180, center = true);
translate([-20,0,0]) cube([20,8,24], center = true);    



//right front frame
translate([20+20,-6,-10]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);
//right back frame
translate([20+14.5+20,-6,-10+4]) rotate([90,0,0]) cylinder(h = 20, d=20, $fn = 180, center = true);
//cube in between
translate([20+(14.5/2)+20,-6,-10+(4/2)]) rotate([0,74.5,0]) cube([20,20,15.5], center = true); 





//bottom slanted frame
translate([10,0,-11]) rotate([0,-1.9,0]) cube([60,8,20], center = true);
//top slanted frame
translate([15,0,2]) rotate([0,14.37,0]) cube([73,8,22], center = true);


}

//front m5 holes
for(i=[-1,1])translate([-20,0,i*12]) rotate([90,0,0]) cylinder(h = 100, d=5.2, $fn = 180, center = true);

//right front frame m5 hole    
translate([20+20,0,-10]) rotate([90,0,0]) cylinder(h = 100, d=5.2, $fn = 180, center = true);

//right back frame m4 hole
translate([20+14.5+20,0,-10+4]) rotate([90,0,0]) cylinder(h = 100, d=4.2, $fn = 180, center = true);



}
 