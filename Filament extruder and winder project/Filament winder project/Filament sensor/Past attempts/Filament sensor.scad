//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);






//cube([120,120,3], center = true);



//bearing (Grey)
difference(){
translate([0,0,0]) rotate([0,90,0]) color([0.4,0.4,0.4]) cylinder(h = 5, d=16, $fn = 180, center = true);

translate([0,0,0]) rotate([0,90,0]) color([0.3,0,0.6]) cylinder(h = 6, d=8, $fn = 180, center = true);
    
}   






//Bearing 8mm rod (dark purple)
translate([0,0,0]) rotate([0,90,0]) color([0.3,0,0.6]) cylinder(h = 5, d=8, $fn = 180, center = true);

translate([-4,0,0]) rotate([0,90,0]) color([0.3,0,0.6]) cylinder(h = 3.01, d=5, $fn = 180, center = true);

translate([3,0,0]) rotate([0,90,0]) color([0.3,0,0.6]) cylinder(h = 1, d=10, $fn = 180, center = true);


//bearing outer frame
translate([3.5+1,0,0]) rotate([0,90,0]) color([0.3,0,0.6]) cylinder(h = 2, d=10, $fn = 180, center = true);

translate([5.5-1,12+6,0]) color([0.3,0,0.6]) cube([2,36,10], center = true);


///////////////////////////////////////////////////

translate([0,0,0]){

difference(){
union(){
translate([-3.5-1,0,0]) rotate([0,90,0]) color([0,0,1]) cylinder(h = 2, d=10, $fn = 180, center = true);

translate([-5.5+1,12+6,0]) color([0,0,1]) cube([2,36,10], center = true);
}

translate([0,0,0]) rotate([0,90,0]) color([0,0,1]) cylinder(h = 25, d=5, $fn = 180, center = true);


}
    
 }   
