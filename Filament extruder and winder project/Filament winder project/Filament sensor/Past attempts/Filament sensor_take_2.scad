//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);





//1.75 mm filament
rotate([0,90,0]) cylinder(h = 200, d=1.75, $fn = 180, center = true);





/////////////////////////////////////////////////////////////
//bearing middle 
/////////////////////////////////////////////////////////////
difference(){
translate([0,0,9]) rotate([90,0,0])  cylinder(h = 5, d=16, $fn = 180, center = true);

translate([0,0,9]) rotate([90,0,0])  cylinder(h = 6, d=8, $fn = 180, center = true);
    
}   
//////////////////////////////////////////////////////////////






//////////////////////////////////////////////////////////////
//bottom bearing 
//////////////////////////////////////////////////////////////
difference(){
translate([0,0,-9]) rotate([90,0,0])  cylinder(h = 5, d=16, $fn = 180, center = true);

translate([0,0,-9]) rotate([90,0,0])  cylinder(h = 6, d=8, $fn = 180, center = true);
    
}   



//////////////////////////////////////////////////////////////





















//////////////////////////////////////////////////////////////////
//magnet holder
//////////////////////////////////////////////////////////////////

//right bearing ///////////////////////
translate([0,-1,0]){
difference(){
union(){    
translate([17,7+3,9]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 180, center = true);
translate([17,3+3,9]) rotate([90,0,0]) cylinder(h = 3, d=25, $fn = 180, center = true);




}
translate([17,7+3,9]) rotate([90,0,0]) cylinder(h = 5, d=16.3, $fn = 180, center = true);


translate([17,3+3,9]) rotate([90,0,0]) cylinder(h = 3, d=9, $fn = 180, center = true);
    
}} 
///////////////////////////////////// 

//left bearing ///////////////////////
translate([0,1,0]){
difference(){
union(){    
translate([17,-7-3,9]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 180, center = true);
translate([17,-3-3,9]) rotate([90,0,0]) cylinder(h = 3, d=25, $fn = 180, center = true);

}
translate([17,-7-3,9]) rotate([90,0,0]) cylinder(h = 5, d=16.3, $fn = 180, center = true);


translate([17,-3-3,9]) rotate([90,0,0]) cylinder(h = 3, d=9, $fn = 180, center = true);
    
} }
///////////////////////////////////// 



//center part
difference(){
    
union(){    
translate([17,0,9]) rotate([90,0,0]) cylinder(h = 7, d=25, $fn = 180, center = true);

difference(){
translate([17,0,9]) rotate([90,0,0]) cylinder(h = 3, d=25+6, $fn = 180, center = true);

translate([0,0,6]) rotate([0,0,0]) cube([40,5+3,25], center = true);

}

}
translate([17,0,9]) rotate([90,0,0]) cylinder(h = 7, d=16.3, $fn = 180, center = true);


translate([17,0,0]) rotate([0,17.7,0]) cube([40,5+3,25], center = true);

translate([17,0,-5]) rotate([0,-17.7,0]) cube([40,5+3,25], center = true);

}





/*

difference(){
union(){    
translate([17,0,9]) rotate([90,0,0]) cylinder(h = 1.75, d=25, $fn = 180, center = true);

translate([17,2.5,9]) rotate([90,0,0]) cylinder(h = 2, d1=35, d2=30, $fn = 180, center = true);
    
translate([17,-2.5,9]) rotate([90,0,0]) cylinder(h = 2, d1=30, d2=35, $fn = 180, center = true);    

}
translate([17,0,21]) rotate([0,-25,0]) cube([40,5+3,25], center = true);


}

*/




//front bearing holder 
for(i=[0:1]) mirror([0,i,0]){    
translate([0,-1,0]){
difference(){
union(){    
translate([0,7+3-0.25,9]) rotate([90,0,0])  cylinder(h = 5.5, d=16, $fn = 180, center = true);
translate([4,7+3-0.25,9]) cube([8,5.5,16], center = true);


translate([0,7-1-0.5-0.125,9]) rotate([90,0,0])  cylinder(h = 3+0.25, d1=16, d2=10, $fn = 180, center = true);

}
translate([0,7,9]) rotate([90,0,0])  cylinder(h = 15, d=8, $fn = 180, center = true);
    
}}} 








//translate([17,-7-0.5,-25]) cube([8,5+3,50], center = true);


//hall effect sensor frame
difference(){
union(){    
translate([-10,0,20]) cube([54,6,3], center = true);
translate([-10,0,20+3]) cube([54,3,3], center = true);
}    
translate([-34,0,20-2-0.5]) rotate([0,0,0])  cylinder(h = 3, d=6, $fn = 180, center = true);
}    
    

/////////////////////////////////////////////////////////////////
















/////////////////////////////////////////////////////////////////
//outer frame
/////////////////////////////////////////////////////////////////

difference(){        //for halving cube
union(){    
difference(){
union(){
    
for(i=[0:1]) mirror([0,i,0]){    
translate([17,-15.5-2,9]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 180, center = true); 
translate([0,-15.5-2,-9]) rotate([90,0,0]) cylinder(h = 5, d=25, $fn = 180, center = true); 
translate([17,-15.5+2+0.125,9]) rotate([90,0,0]) cylinder(h = 3+0.25, d2=25, d1=9, $fn = 180, center = true);  
translate([17/2,-15.5-2,0]) rotate([0,-46.64,0]) cube([25,5,25], center = true);      
translate([-20+0.5,-15.5-2,-9]) rotate([0,0,0]) cube([41,5,25], center = true); 
 
//translate([19.5,-15.5-2,-5.5]) rotate([0,0,0]) cube([20,5,29], center = true); 
//translate([14,-15.5-2,-11.5]) rotate([0,0,0]) cube([31,5,20], center = true);
    
}    



    


//filament guide
difference(){
union(){    
translate([-15,0,0]) cube([10,36,7], center = true); 
translate([-15,4,0]) cube([10,5,15], center = true); 
translate([-15,-4,0]) cube([10,5,15], center = true);



}
translate([-15,0,0]) cube([11,3,8], center = true);
translate([-23,0,0])  rotate([0,0,45]) cube([10,10,16], center = true);
translate([-7,0,0])  rotate([0,0,45]) cube([10,10,16], center = true);

}












}

//wall circle elimination
for(i=[0:1]) mirror([0,i,0]) translate([-34,12,4.5]) rotate([0,0,0]) cylinder(h = 8, d=12+1, $fn = 90, center = true);


translate([17,-15.5,9]) rotate([90,0,0]) cylinder(h = 20, d=8, $fn = 180, center = true);
translate([0,-15.5,-9]) rotate([90,0,0]) cylinder(h = 20, d=8, $fn = 180, center = true);
translate([17,15.5,9]) rotate([90,0,0]) cylinder(h =20, d=8, $fn = 180, center = true);
translate([0,15.5,-9]) rotate([90,0,0]) cylinder(h = 20, d=8, $fn = 180, center = true);
}



//Cylinders

for(i=[0,1]) mirror([0,i,0]){
difference(){
union(){    
translate([-34,12,-0.5-8+5]) rotate([0,0,0]) cylinder(h = 8, d=12, $fn = 90, center = true);
 
translate([-34,15,-0.5-8+5]) rotate([0,0,0]) cube([12,6,8], center = true); 
  
}    
//hole through baseplate
translate([-34,12,-8+5]) rotate([0,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);

//bolt in baseplate
translate([-34,12,-7.5+5-8+5]) rotate([0,0,0]) cylinder(h = 6, d=7-0.5, $fn = 6, center = true); 

}}


//end of filament guide










//m8 cylinder for bottom bearing
difference(){   
translate([0,0,-9]) rotate([90,0,0]) cylinder(h = 30, d=8+6, $fn = 180, center = true);

translate([0,0,-9]) rotate([90,0,0]) cylinder(h = 12, d=8+7, $fn = 180, center = true); 
  
translate([0,0,-9]) rotate([90,0,0]) cylinder(h = 40, d=8, $fn = 180, center = true);     
    
}    


difference(){
union(){    
translate([0,4.5-0.125,-9]) rotate([90,0,0]) cylinder(h = 3+0.25, d1=8+6, d2=10, $fn = 180, center = true);  
    
translate([0,-4.5+0.125,-9]) rotate([90,0,0]) cylinder(h = 3+0.25, d2=8+6, d1=10, $fn = 180, center = true); 
}  
       
translate([0,0,-9]) rotate([90,0,0]) cylinder(h = 40, d=8, $fn = 180, center = true);       
}  







}



//halving cube left

//translate([0,25,0]) rotate([0,0,0]) cube([100,50,50], center = true); 

//halving cube right

translate([0,-25,0]) rotate([0,0,0]) cube([100,50,50], center = true); 



}
////////////////////////////////////////////////////////////////





















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

translate([-34,0,5.4+0.3]) rotate([0,45,0]) cube([10,4,10], center = true);  
}  


translate([-34,-3.5,10+0.25]) cube([10,3.5,1.5], center = true);

difference(){
translate([-34,3.5,10+0.25]) cube([10,3.5,1.5], center = true);

translate([-34,0,10+0.25]) cube([4+0.5,15,1.5], center = true); 

}


translate([-34,0,10-1.25]) cube([10,10.5,1.5], center = true);


//end of hall effect sensor box


for(i=[0,1]) mirror([0,i,0]){
difference(){    
translate([-34,12,2]) rotate([0,0,0]) cylinder(h = 3, d=12, $fn = 90, center = true);

//hole through baseplate
translate([-34,12,-8]) rotate([0,0,0]) cylinder(h = 25, d=3.2, $fn = 30, center = true);
}}

difference(){
    
//baseplate    
translate([-34,0,6]) cube([12,40,5], center = true);

translate([-34,12,6]) rotate([0,0,0]) cylinder(h = 6, d=6, $fn = 30, center = true); 
translate([-34,-12,6]) rotate([0,0,0]) cylinder(h = 6, d=6, $fn = 30, center = true);    
}  
}


///////////////////////////////////////////////////////////////









  














