//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){





difference(){
cube([80,18,3], center = true);

for(i=[-1,1])translate([i*63/2,0,0])cylinder(h = 5, d=8.25, $fn = 180, center = true);
    
for(i=[-1,1])translate([0,i*10,0]) cube([45,12,4], center = true);
}