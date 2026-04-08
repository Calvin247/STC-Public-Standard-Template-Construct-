//Tob hall effect sensor box

difference(){
translate([-34,0,10]) cube([10,3.5,1], center = true);

translate([-34,0,10]) cube([4+0.5,4,1], center = true);  
}    

difference(){
translate([-34,0,10+0.5+0.25]) cube([10,3.5,0.5], center = true);

translate([-34,0,5.4+0.3]) rotate([0,45,0]) cube([10,4,10], center = true);  
}  


translate([-34,-3.5,10+0.25]) cube([10,3.5,1.5], center = true);

difference(){
translate([-34,3.5,10+0.25]) cube([10,3.5,1.5], center = true);

translate([-34,0,10+0.25]) cube([4+0.5,15,1.5], center = true); 

}


translate([-34,0,10-1.25]) cube([10,10.5,1.5], center = true);

