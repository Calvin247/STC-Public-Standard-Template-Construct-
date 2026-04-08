
////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = 90, center = true); 


}
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10, $fn = 45, center = true);
    

    
for(i=[0:3]) rotate([-i*90,0,0]) translate([0,12.5,0]) rotate([0,90,0]) cylinder(h = 11, d=3.2, $fn = 30, center = true);

}
