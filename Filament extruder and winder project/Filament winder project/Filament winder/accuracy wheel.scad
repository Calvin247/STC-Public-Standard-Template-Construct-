//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);





A = 180;
B = 60;


difference(){
cylinder(h = 60, d=120-1, $fn = A, center = true);




for(i=[-2:2]) translate([0,0,i*1.75]) rotate_extrude(convexity = 10, $fn = A) translate([60, 0, 0])circle(d = 1.75, $fn = B); 
    
    
}    