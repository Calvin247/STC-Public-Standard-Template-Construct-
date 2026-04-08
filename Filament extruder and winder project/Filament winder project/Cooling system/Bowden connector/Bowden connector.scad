//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);
//module Test(){





difference(){
translate([1,0,0])cube([22,22,12], center = true);
    

translate([0,-0.5,0]) rotate([90,0,0])cylinder(h = 21, d=4.25, $fn = 180, center = true); 
    
rotate([90,0,0])cylinder(h = 22, d=3.5, $fn = 180, center = true); 
    
    
translate([10,0,0])cube([20,30,1.25], center = true);    
 
 
 
//m3 nuts 
    
for(i=[-1,1])translate([7.5,i*6,3.5+3])rotate([0,0,30]) cylinder(h = 6, d=7, $fn = 6, center = true);    
    

for(i=[-1,1])translate([7.5,i*6,-3.5-3])cylinder(h = 6, d=6, $fn = 30, center = true); 
    
for(i=[-1,1])translate([7.5,i*6,3.5+3])cylinder(h = 20, d=3.25, $fn = 30, center = true);  
 
 
    
}

difference(){
translate([-7.5,0,0])cube([5,15,39], center = true);

for(i=[-1,1]) translate([-10,0,i*12])rotate([0,90,0])cylinder(h = 22, d=5, $fn = 180, center = true); 
    


}
