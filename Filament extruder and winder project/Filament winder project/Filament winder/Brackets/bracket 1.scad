//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);




difference(){
translate([0,0,7-1.5])cube([17,17,17+14-3], center = true);
rotate([0,90,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);
    
}    




difference(){
translate([18,0,25]) rotate([-15,0,90]){
difference(){
    
union(){    
rotate([0,0,0]) translate([0,14,5]) cube([17,28,17], center = true);
rotate([0,0,0]) translate([0,0,5]) cylinder(h = 22, d=17, $fn = 180, center = true);      
}    

rotate([0,0,0]) translate([0,0,5]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);
 
translate([0,18-1,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);

}





