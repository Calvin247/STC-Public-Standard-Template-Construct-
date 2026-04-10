//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);


difference(){
union(){
translate([-16,0,0]) cube([62,20,5], center = true);
translate([-15-22,-2,0]) cube([20,20,5], center = true);

for(i=[-1,1])translate([i*15,0,5])cylinder(h = 15, d=20, $fn = 180, center = true);
    
for(i=[-1])translate([-15-22,i*12,0])cylinder(h = 5, d=20, $fn = 180, center = true);
    
    
    
}

for(i=[-1,1])translate([i*15,0,5])cylinder(h = 50, d=8.25, $fn = 180, center = true);



for(i=[1])translate([-15-22,i*12,0])cylinder(h = 6, d=20, $fn = 180, center = true);

}