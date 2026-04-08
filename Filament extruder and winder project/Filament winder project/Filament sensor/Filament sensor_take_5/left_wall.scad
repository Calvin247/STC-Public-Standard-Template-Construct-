



mirror([0,1,0]) leftWall();


A = 90; //large circle resolution
B = 30; //Small circle resolution




module leftWall(){

/////////////////////////////////////////////////////////////////
//wall
///////////////////////////////////////////////////////////////
    
difference(){
union(){
  
//translate([17,17.5,19]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 45, center = true); 
translate([0,17.5,-9]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = B, center = true); 
//translate([17,13.5-0.125,9+10]) rotate([90,0,0]) cylinder(h = 3+0.25, d1=25, d2=9, $fn = 45, center = true); 
   
//wall connecting 2 bearings    
//translate([17/2,17.5,5]) rotate([0,-58.7,0]) cube([32,5,25], center = true);      

//wall breadth
translate([3-7.5,17.5,-9+5+2.5-0.5-5]) rotate([0,0,0]) cube([86+15,5,10+1+3], center = true); 
   
    
    
////////////////////////////////////
//filament guide
////////////////////////////////////    
 
 
   
translate([-11.5,4.5-0.5,0]) rotate([90,4,0]){
rotate_extrude(convexity = 10, $fn = B)
translate([3.5, 0, 0])
circle(r = 2.5, $fn = A);
}


//translate([-11.5,4.5,0]) for(i=[0:76]) rotate([0,i*4.7,0]) translate([3,0,0]) cylinder(h = 0.5, d=6, $fn = 45, center = true);


translate([-11.5,12.5-0.25-0.25,0]) rotate([90,0,0]) cylinder(h = 10+5+0.5+0.5, d=12, $fn = B, center = true);

//donut fill
translate([-11.5,4.5,0]) rotate([90,0,0]) cylinder(h = 6, d=7, $fn = B, center = true);





////////////////////////////////////
//filament guide 2
////////////////////////////////////


translate([14.5,4.5-0.5,0]) rotate([90,4,0]){
rotate_extrude(convexity = 10, $fn = B)
translate([3.5, 0, 0])
circle(r = 2.5, $fn = A);
}


//translate([14.5,4.5,0]) for(i=[0:76]) rotate([0,i*4.7,0]) translate([3,0,0]) cylinder(h = 0.5, d=6, $fn = 45, center = true);

translate([14.5,12.5-0.25-0.25,0]) rotate([90,0,0]) cylinder(h = 10+5+0.5+0.5, d=12, $fn = B, center = true);

//donut fill
translate([14.5,4.5,0]) rotate([90,0,0]) cylinder(h = 6, d=7, $fn = B, center = true);










////////////////////////////////////
//Cylinders
////////////////////////////////////

difference(){
union(){    
//translate([-34,12,-3.5]) rotate([0,0,0]) cylinder(h = 8, d=12, $fn = 45, center = true);
 
//translate([-34,15,-3.5]) rotate([0,0,0]) cube([12,6,8], center = true); 
  
}    
//hole through baseplate
//translate([-34,12,-3]) rotate([0,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
//translate([-34,12,-5.5]) rotate([0,0,0]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true); 

}




////////////////////////////////////
//m8 cylinder for bottom bearing
////////////////////////////////////
difference(){
union(){
translate([0,13.5-1+1.75,-9]) rotate([90,0,0])  cylinder(h = 1.5, d1=25,d2=20, $fn = B, center = true);     
    
translate([0,10.5,-9]) rotate([90,0,0]) cylinder(h = 9, d=14, $fn = B, center = true);  
    
translate([0,4.5-0.125,-9]) rotate([90,0,0]) cylinder(h = 3+0.25, d1=8+6, d2=10, $fn = B, center = true);  
}  
       
translate([0,0,-9]) rotate([90,0,0]) cylinder(h = 40, d=8, $fn = A, center = true);



}  







////////////////////////////////////
//back circle wall 
////////////////////////////////////

difference(){
union(){    
translate([38.5+2.5,0,0]) rotate([0,90,0]) cylinder(h = 10, d=40, $fn = A, center = true); 


}
translate([38.5+2.5,0,0]) rotate([0,90,0]) cylinder(h = 10, d=10+4, $fn = B, center = true);
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([38.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=6, $fn = B, center = true);   
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([43.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = B, center = true);
    

translate([0,-25,0]) rotate([0,0,0]) cube([120,50,80], center = true); 

translate([0,0,40]) rotate([0,0,0]) cube([120,50,80], center = true); 

}



////////////////////////////////////
//front circle wall 
////////////////////////////////////

translate([-50,0,0]){
difference(){ 
rotate([0,90,0]) cylinder(h = 10, d=40, $fn = A, center = true); 

rotate([0,90,0]) cylinder(h = 10, d=10+4, $fn = B, center = true);
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=7-0.5, $fn = 6, center = true);   
    
for(i=[0:1]) rotate([-45+22-i*44,0,0]) translate([-2.5,12.5,0]) rotate([0,90,0]) cylinder(h = 5, d=3.2, $fn = B, center = true);
    

translate([0,-25,0]) rotate([0,0,0]) cube([120,50,80], center = true); 

translate([0,0,40]) rotate([0,0,0]) cube([120,50,80], center = true); 

}}







}




////////////////////////////////////
//wall circle elimination
////////////////////////////////////

//translate([-34,12,4.5]) rotate([0,0,0]) cylinder(h = 8, d=13, $fn = 90, center = true);



translate([17,15.5,19]) rotate([90,0,0]) cylinder(h =20, d=8, $fn = A, center = true);
translate([0,15.5,-9]) rotate([90,0,0]) cylinder(h = 20, d=8, $fn = A, center = true);




////////////////////////////////////
//halving cube right
////////////////////////////////////

//translate([0,-25,0]) rotate([0,0,0]) cube([120,50,80], center = true); 








////////////////////////////////////
//wall circle elimination
////////////////////////////////////

//translate([0,13.5+2-2.5,9]) rotate([90,0,0])  cylinder(h = 3+5, d=18, $fn = 45, center = true);




for(i=[-2.4:25]) translate([17,13.5-0.125,9+10]) rotate([0,i*3,0]) translate([-17,-3/8+1.75,9-19]) rotate([90,0,0]) cylinder(h = 3+5+2.5, d=18, $fn = B, center = true);


////////////////////////////////////
//bottom bearing elastic band groove
////////////////////////////////////




difference(){
    
translate([0,13.5-1,-9]) rotate([90,0,0])  cylinder(h = 2, d=16, $fn = B, center = true);  
   

    
 translate([0,13.5-1,-9]) rotate([90,0,0])  cylinder(h = 2, d=12, $fn = B, center = true);    
    
} 







}}




////////////////////////////////////////////////////////////////






