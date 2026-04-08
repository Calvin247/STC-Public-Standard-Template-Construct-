









hallEffectSensor();







module hallEffectSensor(){

///////////////////////////////////////////////////////////////
//Tob hall effect sensor box
//////////////////////////////////////////////////////////////
translate([0,0,0]){
difference(){
translate([-34,0,10]) cube([10,3.5,1], center = true);

translate([-34,0,10]) cube([4+0.5,4,1], center = true);  
}    

difference(){
translate([-34,0,10+0.5+0.25]) cube([10,3.5,0.5], center = true);


translate([-34,0,5.4+0.3]) rotate([0,60,0]) cube([10.55,4,6], center = true);  
    
translate([-34,0,5.4+0.3]) rotate([0,-60,0]) cube([10.55,4,6], center = true);      
}  


translate([-34,-3.5,10+0.25]) cube([10,3.5,1.5], center = true);

difference(){
translate([-34,3.5,10+0.25]) cube([10,3.5,1.5], center = true);

translate([-34,0,10+0.25]) cube([4+0.5,15,1.5], center = true); 

}


translate([-34,0,10-1.25]) cube([10,10.5,1.5], center = true);


//end of hall effect sensor box






difference(){
translate([-34,12,4.5-2-2.5]) cube([12,12,8-4+5], center = true);

//hole through baseplate
translate([-34,12,-8]) rotate([0,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);


}







difference(){
    
//baseplate    
translate([-34,7.375,6]) cube([12,40-14.75,5], center = true);

translate([-34,12,6]) rotate([0,0,0]) cylinder(h = 6, d=6, $fn = 30, center = true);    
}}


///////////////////////////////////////////////////////////////







//bottom mount

translate([-34,-1.75,11.5])rotate([90,0,0]){
difference(){  
translate([0,-1.5-2.5,-19.25])cube(size = [15+4,8+5+5,5], center = true);

translate([0,-1.5,0]) cube(size = [8,3,100], center = true);
}

}









}
















