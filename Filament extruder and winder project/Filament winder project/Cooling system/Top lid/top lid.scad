/////////////////////////////////////////////////////////////
//Bottom connectors
/////////////////////////////////////////////////////////////

translate([0,0,257.375]){
mirror([0,0,1]){
for(j=[0:1]) mirror([j,0,0]){
for(i=[0:1]) mirror([0,i,0]){
difference(){  
union(){    
translate([28,-28,107.5+15]) cube([20+20+10,10,20], center = true);
//translate([23.34,-28,107.5+9.41]) translate([-6.5,0,-14]) rotate([0,40,0]) cube([20,10,45], center = true);


}
translate([28,-28,107.5+15]) rotate([90,0,0]) cylinder(h = 16, d=3.2, $fn = 180, center = true);

//hexagon
translate([28,-2.5-28,107.5+15]) rotate([90,0,0]) cylinder(h = 5, d=6, $fn = 30, center = true);

//translate([0,0,0]) cube([36,80,250], center = true);

translate([28+20,-28,107.5+15]) cube([20,20,30], center = true);



translate([0,0,134]) cube([35,80,10], center = true);


translate([28-30,-28,107.5+15]) rotate([0,40,0]) translate([0,0,-3]) cube([20+30,11,20], center = true);

}
}
}
}

}










//////////////////////////////////////////////////////////////
//Lid
//////////////////////////////////////////////////////////////

translate([0,0,10]){
difference(){
translate([0,0,116.5]) cube([36-0.25,66,3.25], center = true);
translate([0,0,116.5]) cube([30+0.25,60+0.25,4], center = true);




}

translate([0,0,116.5+3+0.125]) cube([36-0.25,66,3], center = true);



}
















translate([0,0,132.62]) rotate([-180,0,0]) resize([35.5-10,66-10,3]) cylinder(h = 16, d1=30, d2=50, $fn = 4, center = true); 