//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);




rotate([-90,0,0]) frame();


module frame(){

difference(){
union(){   
   
cube([10,50,21], center = true);   
    
for(i=[0,1]) mirror([0,i,0]) translate([0,29,0]) cylinder(h = 21, d=17, $fn = 180, center = true);   
    
for(i=[-1,1]) translate([22,i*12,-8])cylinder(h = 5, d=15, $fn = 180, center = true);
    

translate([11,0,-8]) cube([22,39,5], center = true);

translate([22,0,-8]) cube([15,24,5], center = true);

difference(){
translate([17,0,0]) cube([25,5,21], center = true);

translate([20,0,13.26])rotate([0,33.2,0]) cube([40,6,21], center = true);

}



for(i=[0,1]) mirror([0,i,0]){
difference(){
translate([17,12,0]) cube([25,5,21], center = true);

translate([20.75,12,13.26])rotate([0,60,0]) cube([50,6,30], center = true);

}}





}    
for(i=[0,1]) mirror([0,i,0]) translate([0,29,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true); 

for(i=[-1,1]) translate([22,i*12,0])cylinder(h = 60, d=5.25, $fn = 180, center = true);

}
 


}