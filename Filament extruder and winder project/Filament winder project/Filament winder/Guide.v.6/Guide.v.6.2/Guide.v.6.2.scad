//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);






difference(){
    
union(){    
translate([0,9,0])cube([40,60-18,12], center = true);
    
translate([-40,25,0])cube([40,10,12], center = true); 
 
translate([-50,25,0])rotate([90,0,0])cylinder(h = 10, d=30+29, $fn = 180, center = true);    

}  


 translate([-50,25,0])rotate([90,0,0])cylinder(h = 11, d=5.25, $fn = 180, center = true);   
 
    
translate([0.5,-15+13,0])rotate([0,90,0])cylinder(h = 40, d=2.25, $fn = 180, center = true);    

translate([0,-15+13,0])rotate([0,90,0])cylinder(h = 60, d=2, $fn = 180, center = true);  
    
translate([0,-25+13,0])cube([70,40,1.25], center = true);  
   
   
//m3 nuts 
    
for(i=[0,1])mirror([i,0,0])translate([10,-25+18,3.5+3])rotate([0,0,30]) cylinder(h = 6, d=7, $fn = 6, center = true);    
    

for(i=[0,1])mirror([i,0,0])translate([10,-25+18,-3.5-3])cylinder(h = 6, d=6, $fn = 30, center = true); 
    
for(i=[0,1])mirror([i,0,0])translate([10,-25+18,0])cylinder(h = 20, d=3.25, $fn = 30, center = true); 


}    