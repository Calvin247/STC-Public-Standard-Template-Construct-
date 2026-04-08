


difference(){   
translate([0,0,-2]) cube([30+6,60+6,24], center = true);
 
       
translate([0,0,-2]) cube([30,60,25], center = true);

}




/////////////////////////////////////////////////////////////
//Top connectors
/////////////////////////////////////////////////////////////

translate([0,0,-125+20]){
for(j=[0:1]) mirror([j,0,0]){
for(i=[0:1]) mirror([0,i,0]){
difference(){  
union(){    
translate([28,-28+10.25,107.5+17.5]) cube([20,10,20], center = true);
translate([23.34,-28+10.25,107.5+9.41+2.5]) translate([-6.5,0,-14]) rotate([0,40,0]) cube([20,10,45], center = true);


}


//wall inner tolarence
translate([28-20+0.25,-28+10.25,107.5+17.5]) cube([20,10+2,20], center = true);

translate([28,-28+10.25,107.5+15+2.5]) rotate([90,0,0]) cylinder(h = 16, d=3.2, $fn = 180, center = true);

//hexagon
translate([28,-2.5-28+10.25+5,107.5+15+2.5]) rotate([90,0,0]) cylinder(h = 5, d=6.5, $fn = 6, center = true);

translate([0,0,0]) cube([36,80,300], center = true);

translate([28+20,-28+10.25,107.5+15+2.5]) cube([20,20,30], center = true);
}
}
}
}



/////////////////////////////////////////////////////////////////
//shell 
/////////////////////////////////////////////////////////////////

//shell center point
//translate([-50,0,-12.5]) cube([3,66+3,3], center = true);

/////////////////////////////////////
//small curve
////////////////////////////////////
difference(){
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([67,52,66]) cylinder(h = 66, d=40, $fn = 90, center = true);

//inner empying
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([67-6,52-6,66+10]) cylinder(h = 66, d=40, $fn = 90, center = true);

//eliminate left
translate([-50-33,0,-12.5]) cube([3+66,66+3,66], center = true);

//eliminate top
    translate([-50,0,-12.5+25]) cube([80,66+3,3+50], center = true);
}


/////////////////////////////////////
//Large curve
/////////////////////////////////////
difference(){
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([133,178,66]) cylinder(h = 66, d=40, $fn = 180, center = true);

//inner empying
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([133-6,178-6,66-6]) cylinder(h = 66, d=40, $fn = 180, center = true);
    
//eliminate left
translate([-50-33,0,-12.5]) cube([3+66,66+3,200], center = true);   
   
//eliminate top
    translate([-50,0,-12.5+25+25]) cube([150,66+3,3+50+50], center = true); 
  
  
//small curve inner empying
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([67-6,52-6,66+10]) cylinder(h = 66, d=40, $fn = 90, center = true);    
    
    
    
}









difference(){
translate([-50,0,-70]) cube([3,66,66], center = true);
translate([-50,0,-70]) cube([4,60,60], center = true);
    
    
}    



















/////////////////////////////////////////////////////////////
//Top insert
/////////////////////////////////////////////////////////////


translate([0,0,11.5]){
difference(){
union(){    
translate([0,0,0]) cube([30-0.25,60-0.25,3], center = true);
    

 
//short walls    
difference(){
for(i=[0:1])mirror([0,i,0])translate([0,28.5,-6.5]) cube([30,3,10], center = true);  

for(i=[0:1])mirror([0,i,0])translate([0,28.5,-6.5]) rotate([90-73.5,0,0]) translate([0,-5.0,0]) cube([30,10,15], center = true); 
}  
   
   
   
    
//long walls    
difference(){
for(i=[0:1]) mirror([i,0,0]) translate([13.5,0,-6.5]) cube([3,60,10], center = true); 

for(i=[0:1])mirror([i,0,0])translate([13.5,0,-6.5]) rotate([0,73.5,0]) translate([0,0,-10]) cube([24,60,20], center = true); 
}  
}



translate([0,0,0]) cube([30-6,60-6,40], center = true);






}






}


































/////////////////////////////////////////////////////////////
//Bottom connectors
/////////////////////////////////////////////////////////////
difference(){
union(){
translate([63.5,0,-70]) rotate([90,0,90]) translate([0,0,17.5]) rotate([0,0,90]){
mirror([0,0,1]){
for(j=[0:1]) mirror([j,0,0]){
for(i=[0:1]) mirror([0,i,0]){

translate([15,0,0]){
    
difference(){  
union(){    
translate([28,-28,107.5+15]) cube([20,10,20], center = true);
translate([23.34,-28,107.5+9.41]) translate([-6.5,0,-14]) rotate([0,40,0]) cube([20,10,45], center = true);






}
translate([28,-28,107.5+15]) rotate([90,0,0]) cylinder(h = 16, d=3.2, $fn = 180, center = true);

//hexagon
translate([28,-2.5-28,107.5+15]) rotate([90,0,0]) cylinder(h = 5, d=6, $fn = 30, center = true);

translate([0,0,0]) cube([36,80,250], center = true);

translate([28+20,-28,107.5+15]) cube([20,20,30], center = true);




}
}
}
}
}

}
}






difference(){
//larnge curve
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([133,178,66]) cylinder(h = 66, d=40, $fn = 180, center = true);


//inner elimination
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([67,52,66]) cylinder(h = 66, d=40, $fn = 90, center = true);


}









}


//extra walls



difference(){

for(i=[0:1]) mirror([0,i,0]) translate([-50+1.5+17,28,-12.5-1.5])  rotate([90,0,0]) resize([133-31.5,178+40,10]) cylinder(h = 10, d=40, $fn = 180, center = true);

//left elimination
for(i=[0:1]) mirror([0,i,0]) translate([-50+1.5+17-50,28,-12.5-1.5])  cube([60,20,250], center = true);
    
for(i=[0:1]) mirror([0,i,0]) translate([-50+1.5+17,28,-12.5-1.5+149])  cube([150,20,250], center = true);
    
translate([-50+1.5,0,-12.5-1.5])  rotate([90,0,0]) resize([133,178,67]) cylinder(h = 66, d=40, $fn = 180, center = true);

for(i=[0:1]) mirror([0,i,0])translate([-40,30,-115])  rotate([90,0,0])  cylinder(h = 20, d=20, $fn = 180, center = true);


}











translate([15,0,20]){


/////////////////////////////////////
//small curve
////////////////////////////////////
difference(){
for(i=[0:1]) mirror([0,i,0]) translate([-50+1.5,28,-12.5-1.5])  rotate([90,0,0]) resize([67-30,52+20+12,10]) cylinder(h = 66, d=40, $fn = 90, center = true);

//inner empying
for(i=[0:1]) mirror([0,i,0]) translate([-50+1.5,28,-12.5-1.5])  rotate([90,0,0]) resize([67-6-30,52-6,66+10]) cylinder(h = 66, d=40, $fn = 90, center = true);

//eliminate left
translate([-50-33,0,-12.5-10]) cube([3+66,66+3,66], center = true);

//eliminate top
    translate([-50,0,-12.5+25]) cube([80,66+3,3+50], center = true);
}
}
















/*




A=120; 

translate([0,0,-12+0.2-3.5-A]){
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
  
    translate([0,0,-1.5]) cube([121,121,6], center = true); 
 
    
    translate([0,0,0]) cube([66+0.5,66+0.5,3], center = true);
    
    translate([0,0,-3]) cube([60,60,4], center = true);
    
    
//////////////////////////////////    
//cutting of the edges of the baseplate
//////////////////////////////////
    
    translate([53+2.5,53+2.5,-1.5]) cube([16,16,7], center = true);

    translate([53+2.5,-53-2.5,-1.5]) cube([16,16,7], center = true);

    translate([-53-2.5,53+2.5,-1.5]) cube([16,16,7], center = true);

    translate([-53-2.5,-53-2.5,-1.5]) cube([16,16,7], center = true);

    }   
////////////////////////////////////
//inseting smooth edges of the baseplate
////////////////////////////////////

    translate([-48,-48,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([-48,48,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48,-48,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    translate([48,48,-1.5])cylinder(h = 6, r=12.5, $fn = 180, center = true);

    }

/////////////////////////////////////
//inserting corner hols for the baseplate
////////////////////////////////////

    translate([48,48,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([48,-48,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48,48,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);

    translate([-48,-48,-1.5])cylinder(h = 7, r=3, $fn = 180, center = true);
    
//////////////////////////////////
//airflow hole in basplate    
//////////////////////////////////
    
    
    
    cube([60,60,4], center = true);
    

//printing guidline    
   
    
    }
    
 
////////////////////////////////
//bottom bolts
///////////////////////////////
    
difference(){ 
    
//bottom  
for(j=[0:1]){
mirror([0,j,0]){ 
for(i=[0:1]){
mirror([i,0,0]){    
difference(){    
translate([-28+10.25-10.25,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 10, d=20, $fn = 6, center = true);    

translate([-28+10-10,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 11, d=3.25, $fn = 30, center = true);

translate([-28+10.25-10.25,-37-1.5,-5.575-1+15.3]) rotate([0,90,0]) rotate([0,0,30]) translate([0,0,-2]) cylinder(h = 6, d=6, $fn = 30,    center = true);    
}}}}}

cube([69,66.5,50], center = true);

translate([0,-47,79-(-12+0.2-3.5)]) rotate([0,90,0]) cylinder(h=66+1, d=160+1, $fn = 180, center = true);

} 
///////////////////////////////////////////////////////////









}

    
///////////////////////////////////////////////////////////    
  
*/

