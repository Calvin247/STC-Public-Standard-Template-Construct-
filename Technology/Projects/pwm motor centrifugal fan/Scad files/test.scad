



difference(){
cylinder(h=10, d=26, $fn = 180, center = true);
    
cylinder(h=11, d=20, $fn = 180, center = true); 
 
translate([14,0,0]) cube([28,28,12], center = true);

translate([0,-14,0]) cube([28,28,12], center = true);    
    
}    


