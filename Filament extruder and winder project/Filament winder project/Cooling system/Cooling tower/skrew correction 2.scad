
difference(){
union(){
translate([0,2.5,0]) rotate([90,0,0]) cylinder(h = 5, r=3.1, $fn = 180, center = true);

//hexagon
translate([0,-2.5,0]) rotate([90,0,0]) cylinder(h = 5, r=5.9, $fn = 30, center = true);
}



translate([0,2.5,0]) rotate([90,0,0]) cylinder(h = 5, d=3.2, $fn = 180, center = true);

//hexagon
translate([0,-2.5,0]) rotate([90,0,0]) cylinder(h = 5, d=6, $fn = 30, center = true);







}
    