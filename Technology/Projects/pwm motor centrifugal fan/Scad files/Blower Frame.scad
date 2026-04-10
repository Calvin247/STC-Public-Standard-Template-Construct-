
A=50; 

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
  






    
    
 /*   
    
    
    
   
    
    
    
////////////////////////////////
//snail shell
////////////////////////////////
    //side walls
    
    difference(){
    union(){
    //translate([31.5,0,39.5]) cube([3,66,79], center = true); 
    
    rotate([0,0,90]) translate([31.5,0,30+5-0.5-1.4]) cube([3,66,95+1+2.8], center = true); 

    rotate([0,0,90]) translate([-31.5,0,-13+8-0.5-1.4]) cube([3,66,25-10+1+2.8], center = true); 
        
    rotate([0,0,180]) translate([31.5,0,30+5-0.5-1.4]) cube([3,66,95+1+2.8], center = true); 
     
    }
    translate([0,-47,79]) rotate([0,90,-10]) cylinder(h=80, d=100, $fn = 180, center = true);
    
    
    
    }

difference(){
translate([0,-47,79]) rotate([0,90,0]) cylinder(h=66, d=160, $fn = 180, center = true);
    
 //empty the center   
translate([-3,-47-5,79-5]) rotate([0,90,0]) cylinder(h=66, d=120-28, $fn = 180, center = true);  
  
translate([30,-47,79]) rotate([0,90,0]) cylinder(h=30, d=154, $fn = 180, center = true);    
    
 ////////////////////////////////
    
translate([0,-47,79]) rotate([0,90,0]) cylinder(h=60, d=154, $fn = 180, center = true);   


translate([0,0,39.5]) cube([60,60,79], center = true);
    
    
    
translate([31.5,0,39.5]) cube([4,60,79], center = true); 
 
 
 
 


}   

//right side wall

difference(){
translate([-31.5,-47-5,79-5]) rotate([0,90,0]) cylinder(h=3, d=120-28, $fn = 180, center = true); 


for(i=[0:5]){
translate([-26,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*60]) translate([0,33,0]) cylinder(h=100, d=28, $fn = 6, center = true);
}

translate([-26,-47-5,79-5]) rotate([0,90,0])cylinder(h=100, d=28, $fn = 6, center = true);

}


//translate([-150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=55, d=10, $fn = 180, center = true);




//snail shell bolt connectors

difference(){
union(){


//all around bolts    
for(i=[0:4]){
difference(){   
translate([28-10,-47,79]) rotate([0,90,0]) rotate([0,0,-90+i*60]) translate([-83.7,0,0]) cylinder(h=10+20, d=16, $fn = 6, center = true);
    
 translate([28,-47,79]) rotate([0,90,0]) rotate([0,0,-90+i*60]) translate([-83.7,0,0]) cylinder(h=25, d=3.25, $fn = 30, center = true);
 


translate([28-10,-47,79]) rotate([0,90,0]) rotate([0,0,-90+i*60]) translate([-83.7,0,-2.5]) cylinder(h = 5+20, d=7, $fn = 6, center = true);
         
 translate([30,-47,79]) rotate([0,90,0]) cylinder(h=60, d=154, $fn = 180, center = true);   
    
 
 
 //30 degree angle   
 translate([28-5-2,-47,79]) rotate([0,90,0]) rotate([0,0,-90+i*60]) translate([-97.5,0,-6]) rotate([0,-32,0]) cube([20,20,50], center = true);  
    
}}







//side bolt
difference(){
translate([28-10,37,15]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 10+20, d=16, $fn = 6, center = true);

translate([28,37,15]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 11, d=3.25, $fn = 30, center = true);
    
translate([28-2.5-10,37,15]) rotate([0,90,0]) rotate([0,0,30])cylinder(h = 5+20, d=7, $fn = 6, center = true); 
 
 
rotate([0,0,90]) translate([31.5-2,0,30+5-0.5-1.4]) cube([3,67,95+1+2.8], center = true); 

 //30 degree angle   
 translate([28-5-2,-47,15]) rotate([0,90,0]) rotate([0,0,-90]) translate([-97.5,0,-6]) rotate([0,-30,0]) cube([20,20,50], center = true); 

    
}


///////////////////////////
//bottom bolts
///////////////////////////

//Bottom back right bolt 2

for(j=[0:1]){
mirror([0,j,0]){ 
for(i=[0:1]){
mirror([i,0,0]){
difference(){
    
  
translate([-28+10.25+7,-37-1.5,-5.575-1]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 10+14, d=20, $fn = 6, center = true);

translate([-28+10,-37-1.5,-5.575-1]) rotate([0,90,0]) rotate([0,0,30]) cylinder(h = 11, d=3.25, $fn = 30, center = true);
    
translate([-28+10+7,-37-1.5,-5.575-1]) rotate([0,90,0]) rotate([0,0,30]) translate([0,0,2.75]) cylinder(h = 5+14, d=7, $fn = 6, center = true);  
  


    
}}}}}

}



//inner smoothing
translate([1.5,0,0]) cube([69,66,20], center = true);

translate([30,-47,79]) rotate([0,90,0]) cylinder(h=30, d=155, $fn = 180, center = true);

translate([0,0,-15.35]) cube([100,100,3.35], center = true);



for(i=[0:1]){
mirror([0,i,0]){    
  //30 degree angle   
translate([28-5-2-15,-42,-5]) rotate([0,90,0]) rotate([0,0,-90]) translate([-97.5,0,-6]) rotate([90,0,0]) resize([45,42,25]) cylinder(h=30, d=5, $fn = 4, center = true);
}}

}

///////////////////////////////////////////////////////





 








//Blades

mirror([1,0,0]){

translate([-1.5*A,0,0]){

    
//blades    
    
for(i=[0:23]){    
translate([0,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*15]) translate([-45.5,-12,0])
difference(){
cylinder(h=70-15, d=26.55, $fn = 180, center = true);
    
cylinder(h=70-15+1, d=20.55, $fn = 180, center = true); 
 
translate([14,0,0]) cube([28+2,28,70-15+1], center = true);

translate([0,-14,0]) cube([28,28,70-15+1], center = true);    
    
} 

//edge rounding far
translate([0,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*15]) translate([-45.5-13.2+1.075+0.36,-12,0])
cylinder(h=70-15, d=3, $fn = 180, center = true);

//edge rounding inner
translate([0,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*15]) translate([-45.5-13.2+1.075+0.36+12.3,-12-0.375+0.04,0])
cylinder(h=70-15, d=3, $fn = 180, center = true);
    
} 


////////////////////////////////////////////////////////////
//Frame around blades
/////////////////////////////////////////////////////////

difference(){  
translate([0,-47-5,79-5]) rotate([0,90,0]) cylinder(h=70-15, d=120+0.03, $fn = 180, center = true);
  
translate([0,-47-5,79-5]) rotate([0,90,0]) cylinder(h=64-15, d=121, $fn = 180, center = true);    
    
 translate([0,-47-5,79-5]) rotate([0,90,0]) cylinder(h=72-15, d=100-8-1, $fn = 180, center = true);   


}   

//left wall
difference(){
union(){    
translate([26,-47-5,79-5]) rotate([0,90,0]) cylinder(h=3,d=100-8-1, $fn = 180, center = true);    
    
translate([15,-47-5,79-5]) rotate([0,90,0]) cylinder(h=20, d1=30 ,d2=100-8-1, $fn = 180, center = true);
}

translate([15+3.6,-47-5,79-5]) rotate([0,90,0]) cylinder(h=18, d1=30 ,d2=100-8-1, $fn = 180, center = true);



for(i=[0:5]){
translate([26,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*60]) translate([0,33,0]) cylinder(h=40, d=28, $fn = 6, center = true);
}


translate([26-10,-47-5,79-5]) rotate([0,90,0])  cylinder(h=30, d=9+0.5, $fn = 6, center = true);

}

difference(){
translate([-124-52+150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=3, d=120, $fn = 180, center = true);


translate([-124-52+150,-47-5,79-5]) rotate([0,90,0])   cylinder(h=4, d=30, $fn = 90, center = true);

for(i=[0:5]){
translate([-124-52+150,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*60]) translate([0,33,0]) cylinder(h=4, d=28, $fn = 6, center = true);
}

}






////////////////////////////////////////////////
//motor attachment
////////////////////////////////////////////////

translate([-25,-47-5,79]){
difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=6, d1=34,d2=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=5+0.5, $fn = 90, center = true); 
} 

//nut holder/////////////////////////////
translate([9,0,0]){   
difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=13, d=9+0.5, $fn = 6, center = true); 
}
}

/////////////////////////////////////////


//middle part
translate([13,0,-5]) rotate([0,90,0])
{
    difference(){
        cylinder(h=6, d=34, $fn = 90, center = true);
        cylinder(h=7, d=17+0.5, $fn = 90, center = true);
    } 
} 



//inner cone
translate([8,0,-5]) rotate([0,90,0])
{
    difference(){
        cylinder(h=4, d=34, $fn = 90, center = true);
        cylinder(h=4, d2=17+0.5,d1=28+0.5, $fn = 90, center = true);
    }
}



//Back part

difference(){ 
translate([-2+7.5,0,-5]) rotate([0,90,0])  cylinder(h=16, d=34, $fn = 90, center = true);    
    
translate([-2+7,0,-5]) rotate([0,90,0])  cylinder(h=17, d=28+0.5, $fn = 90, center = true); 
}


//middel support elimination
difference(){
translate([28.7,0,-5]) rotate([0,90,0])  cylinder(h=6, d2=34,d1=20, $fn = 90, center = true);

translate([30,0,-5]) rotate([0,90,0])  cylinder(h=40, d=9+0.5, $fn = 6, center = true);
 

}}







///////////////////////////////////////////////



}}






*/





/*


//////////////////////////////////////
//left lid
///////////////////////////////////////

translate([2*A,0,0]){
 
difference(){    
union(){    
translate([31.5,-47,79]) rotate([0,90,0]) cylinder(h=3, d=154-1, $fn = 180, center = true);

translate([31.5,0,39.5-7.5-2.5]) cube([3,60-1,79+10+5], center = true);

translate([31.5+3,-47,79]) rotate([0,90,0]) cylinder(h=3, d=154+6, $fn = 180, center = true);

translate([31.5+3,0,39.5-7.5+3.5-2.5]) cube([3,60+6,79+10+5], center = true);
}


translate([31.5,-47-5,79-5]) rotate([0,90,0]) cylinder(h=50, d=91, $fn = 180, center = true);








}



mirror([1,0,0]){
translate([-25,-47-5,79]){
    

//frame from disc to snail shell


translate([0,0,0]){
difference(){
translate([-8.5-6.5,0,-5]) rotate([0,90,0])  cylinder(h=18, d1=50, d2=130, $fn = 30, center = true);
    
translate([-8.5-6.5+3,0,-5]) rotate([0,90,0])  cylinder(h=15, d1=50, d2=120, $fn = 30, center = true);    
    
translate([-8.5-12.5,0,0-5]) rotate([0,90,0]) cylinder(h=55, d=15, $fn = 30, center = true);    

for(i=[0:3]){
translate([-8.5-12.5,0,0-5]) rotate([0,90,0]) rotate([0,0,45+90*i]) translate([0,17,0]) cylinder(h=5+3, d=3, $fn = 30, center = true);   
}

for(i=[0:5]){
translate([-124-52+150,-47-5,79-5]) translate([25,47+5,-79]) rotate([0,90,0]) rotate([0,0,i*60]) translate([0,33+8,0]) cylinder(h=100, d=32, $fn = 6, center = true);
}

}
}

}
}


///////////////////////////////////////////////
//left lid bolt connectors
///////////////////////////////////////////////
   
for(i=[0:4]){  
translate([28+10,-47,79]) rotate([0,90,0]) rotate([0,0,-90+i*60]) translate([-83.7,0,0])
    {
        difference(){
        cylinder(h=10, d=16, $fn = 6, center = true);
        cylinder(h=11, d=3.25, $fn = 30, center = true);
        translate([0,0,2]) cylinder(h = 6, d=6, $fn = 30, center = true);
        }
    }
}

translate([28+10,37,15]) rotate([0,90,0]) rotate([0,0,30])
   {
       difference(){
       cylinder(h = 10, d=16, $fn = 6, center = true);
       cylinder(h = 11, d=3.25, $fn = 30, center = true);
       translate([0,0,2]) cylinder(h = 6, d=6, $fn = 30,    center = true);
       }
   }

/////////////////////////////////////////////////

}




*/



