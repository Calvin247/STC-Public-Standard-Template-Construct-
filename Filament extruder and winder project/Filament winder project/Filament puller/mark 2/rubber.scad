//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

A = 360; //large resolution
B = 90; //small resolution



difference(){   
   
//outer wall    
cylinder(h = 30, d=60, $fn = A, center = true);   

//inner empying
cylinder(h = 31, d=40, $fn = A, center = true);    
    
}   


difference(){   
   
//inner wall extention    
cylinder(h = 30+3, d=60-3, $fn = A, center = true);   

//inner empying
cylinder(h = 34, d=40+3, $fn = A, center = true);    
    
} 




//outer rounding
for(i=[0:1]) mirror([0,0,i]) translate([0,0,15]){
rotate_extrude(convexity = 10, $fn = A)
translate([30-1.5, 0, 0])
circle(d = 3, $fn = B);
}

//inner rounding
for(i=[0:1]) mirror([0,0,i]) translate([0,0,15]){
rotate_extrude(convexity = 10, $fn = A)
translate([20+1.5, 0, 0])
circle(d = 3, $fn = B);
}







difference(){
for(i=[0:10]) rotate([0,0,i*360/10]) translate([20-1.5,0,0]) cube([3,3,30], center = true);
    
for(i=[0:1]) mirror([0,0,i]) translate([0,0,15-2.5]) cylinder(h = 5, d1=34, d2=40, $fn = A, center = true); 

}