







magnetHolder();








module magnetHolder(){


////////////////////////////////////////////////////////////////
//magnet holder
////////////////////////////////////////////////////////////////



////////////////////////////////////
//right bearing 
////////////////////////////////////
translate([0,-1,0]){
difference(){
union(){    
translate([17,10,19]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 45, center = true);
translate([17,6,19]) rotate([90,0,0]) cylinder(h = 3, d=25, $fn = 45, center = true);


}
translate([17,10,19]) rotate([90,0,0]) cylinder(h = 5, d=16.3, $fn = 90, center = true);


translate([17,6,19]) rotate([90,0,0]) cylinder(h = 3, d=9, $fn = 45, center = true);
    
}} 

 
////////////////////////////////////
//left bearing 
////////////////////////////////////

translate([0,1,0]){
difference(){
union(){    
translate([17,-10,19]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 45, center = true);
translate([17,-6,19]) rotate([90,0,0]) cylinder(h = 3, d=25, $fn = 45, center = true);

}
translate([17,-10,19]) rotate([90,0,0]) cylinder(h = 5, d=16.3, $fn = 90, center = true);


translate([17,-6,19]) rotate([90,0,0]) cylinder(h = 3, d=9, $fn = 45, center = true);


translate([20,-7,-1.5]) rotate([0,-21.5,0]) cube([30,8+3,25], center = true);

    
} }








////////////////////////////////////
//center part
////////////////////////////////////

difference(){
    
union(){    
translate([17,0,19]) rotate([90,0,0]) cylinder(h = 7, d=25, $fn = 45, center = true);

difference(){
translate([17,0,19]) rotate([90,0,0]) cylinder(h = 3+7, d=31, $fn = 45, center = true);

translate([0,0,6]) rotate([0,0,0]) cube([40,8+3,25], center = true);

}

}
translate([17,0,19]) rotate([90,0,0]) cylinder(h = 7+4, d=16.3-5, $fn = 45, center = true);


translate([17,0,10]) rotate([0,17.7,0]) cube([40,5+3+3,5], center = true);

translate([17,0,-6+7]) rotate([0,-10,0]) cube([50,5+3+3,12+25], center = true);

}








////////////////////////////////////
//front bearing holder 
////////////////////////////////////

for(i=[0:1]) mirror([0,i,0]){    
translate([0,-1,0]){
difference(){
union(){    
translate([0,10-0.25,9]) rotate([90,0,0])  cylinder(h = 5.5, d=16, $fn = 45, center = true);
    
translate([0,10-0.25,9]) rotate([0,-30,0]) translate([6,0,0]) cube([12,5.5,12], center = true);


translate([0,5.5-0.125,9]) rotate([90,0,0])  cylinder(h = 3+0.25, d1=16, d2=10, $fn = 45, center = true);

}
translate([0,7,9]) rotate([90,0,0])  cylinder(h = 15, d=8, $fn = 90, center = true);


translate([17,10,19]) rotate([90,0,0]) cylinder(h = 5, d=16.3, $fn = 90, center = true);
    
}}} 



////////////////////////////////////
//magnet holder frame
////////////////////////////////////
difference(){
union(){    
translate([-12,0,20]) cube([54,10,3], center = true);
translate([-10,0,20+3]) cube([40,3,3], center = true);
}    
translate([-34,0,20-2-0.5]) rotate([0,0,0])  cylinder(h = 3, d=7, $fn = 45, center = true);

translate([-34,0,20-2-0.5+5.5-0.5]) rotate([0,0,0])  cylinder(h = 3, d=7, $fn = 45, center = true);

translate([17,0,19]) rotate([90,0,0]) cylinder(h = 7+4, d=16.3, $fn = 45, center = true);
}    
    








////////////////////////////////////
//Spring holder
////////////////////////////////////

for(i=[0:1]) mirror([0,i,0]){    
translate([0,-1,0]){
difference(){
union(){    
translate([0,13.5,9]) rotate([90,0,0])  cylinder(h = 2, d=12, $fn = 45, center = true);
    
translate([0,13.5+2,9]) rotate([90,0,0])  cylinder(h = 2, d=16, $fn = 45, center = true);

}
translate([0,7,9]) rotate([90,0,0])  cylinder(h = 20, d=8, $fn = 90, center = true);



    
}}} 

/////////////////////////////////////////////////////////////////



}




  
