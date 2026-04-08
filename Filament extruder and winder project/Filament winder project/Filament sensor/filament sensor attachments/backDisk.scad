
////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = 90, center = true); 


}
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10, $fn = 45, center = true);
    
for(i=[0:3]) rotate([-i*90,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=6.5, $fn = 6, center = true);   
    
for(i=[0:3]) rotate([-i*90,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 10, d=3.2, $fn = 30, center = true);

}














 

for(i=[0:1]) mirror([0,i,0]){


difference(){
translate([0,29,0]) rotate([-15,-15,-180]){
difference(){
    
union(){    
translate([5,0,0]) rotate([0,0,15]) translate([0,0,0]) translate([0,12,5]) cube([10,16+20,17], center = true);
rotate([0,0,0]) translate([5,0,5]) cylinder(h = 22, d=17, $fn = 180, center = true);      
}    

rotate([0,0,0]) translate([5,0,5]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);
 
//translate([0,18-1,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);



for(i=[0:3]) rotate([-i*90,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 12, d=6.5, $fn = 6, center = true);  



translate([10,0,0]) rotate([0,90,0]) cylinder(h = 10, d=45, $fn = 90, center = true); 


for(i=[0:3]) rotate([-i*90,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 10, d=3.2, $fn = 30, center = true);



translate([0,0,0]) rotate([0,90,0]) cylinder(h = 15, d=10, $fn = 45, center = true);

}





}