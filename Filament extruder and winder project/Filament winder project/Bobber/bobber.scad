//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
union(){
for(i=[-1,1,3]) translate([i*12,0,0])cylinder(h = 3, d=15, $fn = 180, center = true);
    

for(i=[-1,1,3]) translate([i*12,0,1.5+1])cylinder(h = 2, d1=15, d2=8, $fn = 180, center = true);
    
translate([12,0,0]) cube([48,15,3], center = true);
}

for(i=[-1,1,3]) translate([i*12,0,0])cylinder(h = 8, d=5.25, $fn = 180, center = true);

}

 