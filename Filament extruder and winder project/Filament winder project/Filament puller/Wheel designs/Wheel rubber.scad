


/////////////////////////////////////////////////////////////////
//Printing notes
/////////////////////////////////////////////////////////////////

//infill = 100%
//material = generic TPU 95

////////////////////////////////////////////////////////////////






A = 180;        //Large  circle resolution




difference(){
translate([0,0,17.5])cylinder(h = 30, d=68, $fn = A, center = true);

translate([0,0,17.5])cylinder(h = 31, d=62, $fn = A, center = true);

}

difference(){
for(i=[0:7]) translate([0,0,17.5]) rotate([0,0,i*45/2]) cube([3,62,30], center = true);
    
translate([0,0,17.5]) cylinder(h = 31, d=55, $fn = A, center = true);




translate([0,0,30]) cylinder(h = 5, d2=62, d1=55, $fn = A, center = true); 
    
translate([0,0,5]) cylinder(h = 5, d1=62, d2=55, $fn = A, center = true);  

}