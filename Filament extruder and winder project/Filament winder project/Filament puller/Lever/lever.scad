//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
union(){
cube([100,40,5], center = true);
for(i=[0:1]) mirror([i,0,0]) translate([50,0,0])cylinder(h = 5, d=40, $fn = 180, center = true);
    
//bearing top
translate([-50,0,13.25])cylinder(h = (33+10)/2, d=40, $fn = 180, center = true);
    
translate([50,0,5]) rotate([0,0,0]) cylinder(h = 5, d1=40, d2=9, $fn = 45, center = true); 
}    
translate([50,0,0])cylinder(h = 60, d=8.3, $fn = 180, center = true);

translate([0,0,0])cylinder(h = 60, d=8.3, $fn = 180, center = true);


//bearing size
translate([-50,0,0])cylinder(h = 5, d=16.3, $fn = 180, center = true);







translate([-50,0,5])cylinder(h = 50, d=11.5, $fn = 180, center = true);


translate([-50,0,29-5])mirror([0,0,1]){
 //m3 hole
rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,0]) cylinder(h = 40, d=3.2, $fn = 30, center = true);  
    
//m3 skrew top
rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,15+10]) cylinder(h = 40, d=6, $fn = 30, center = true); 
    
//m3 nut
rotate([0,0,0]) for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,-15-10]) rotate([0,0,30]) cylinder(h = 40, d=6.5, $fn = 6, center = true);
   
}




}



