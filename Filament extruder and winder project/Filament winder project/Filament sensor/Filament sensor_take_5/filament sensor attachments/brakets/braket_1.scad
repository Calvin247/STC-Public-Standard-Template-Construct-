

mirror([1,0,0]){


difference(){
translate([0,0,6])cube([17,17,17+12], center = true);
rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
    
    
translate([18,0,25]) rotate([-15,0,90]) translate([0,18-1,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);    
    
} 




//Bottom cube

difference(){
translate([0,0,-17])cube([17,17,17], center = true);

translate([0,0,-17]) rotate([0,90,90]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
}






difference(){
translate([18,0,25]) rotate([-15,0,90]){
difference(){
    
union(){ 
  
   
    
difference(){    
rotate([0,0,0]) translate([0,14,5]) cube([17,28,17], center = true);
    
//side smoothing
 rotate([0,25,0]) rotate([0,0,32-1]) translate([-17,0,5]) cube([20,28+2,35], center = true); 
  
//side smoothing2    
rotate([0,25-10,0]) rotate([0,0,-34+30.5]) translate([17-0.02,0,5]) cube([17,35-12,35], center = true);      
    




    
}    
rotate([0,15,0]) translate([0,0,5]) cylinder(h = 25, d=17, $fn = 180, center = true);      
}    

rotate([0,15,0]) translate([0,0,5]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);
 
translate([0,18-1,5-1]) rotate([0,90,0]) cylinder(h = 50, d=8+0.3, $fn = 180, center = true);



translate([-15.5-17,0,-20+17]) cube([17,22,50], center = true);
}  
}

translate([-17,0,17]) cube([17,22,50], center = true);

}



}

