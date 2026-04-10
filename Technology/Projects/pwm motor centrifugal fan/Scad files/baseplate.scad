
difference(){
union(){    
difference(){

////////////////////////////////////
//the baseplate
//////////////////////////////////
    
    cube([120,120,3], center = true);    
    
    
//////////////////////////////////    
//cutting of the edges of the baseplate
//////////////////////////////////
    
    translate([53,53,0]) cube([16,16,7], center = true);

    translate([53,-53,0]) cube([16,16,7], center = true);

    translate([-53,53,0]) cube([16,16,7], center = true);

    translate([-53,-53,0]) cube([16,16,7], center = true);

    }   
////////////////////////////////////
//inseting smooth edges of the baseplate
////////////////////////////////////

    translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

    translate([-45,45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

    translate([45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

    translate([45,45,0])cylinder(h = 3, r=15, $fn = 180, center = true);

    }

/////////////////////////////////////
//inserting corner hols for the baseplate
////////////////////////////////////

    translate([45,45,0])cylinder(h = 6, r=3, $fn = 180, center = true);

    translate([45,-45,0])cylinder(h = 6, r=3, $fn = 180, center = true);

    translate([-45,45,0])cylinder(h = 6, r=3, $fn = 180, center = true);

    translate([-45,-45,0])cylinder(h = 6, r=3, $fn = 180, center = true);
    
//////////////////////////////////
//airflow hole in basplate    
//////////////////////////////////
    
    
    
    cube([60,60,4], center = true);
    }
    
    difference(){
    union(){
    translate([31.5,0,39.5]) cube([3,66,79], center = true); 
    
    rotate([0,0,90]) translate([31.5,0,39.5]) cube([3,66,79], center = true); 
    
    rotate([0,0,180]) translate([31.5,0,39.5]) cube([3,66,79], center = true); 
    
    //rotate([0,0,-90]) translate([31.5,0,5]) cube([3,66,10], center = true); 
    }
    translate([0,-47-5,79-5]) rotate([0,90,0]) cylinder(h=80, d=120, $fn = 180, center = true);
    
    }
    
    
    
    
    
    
    
    
    
    
////////////////////////////////
//snail shell
////////////////////////////////


difference(){
translate([0,-47,79]) rotate([0,90,0]) cylinder(h=66, d=160, $fn = 180, center = true);
    
    
translate([0,-47-5,79-5]) rotate([0,90,0]) cylinder(h=70, d=120, $fn = 180, center = true); 
 
 translate([0,-47,79]) rotate([0,90,0]) cylinder(h=60, d=154, $fn = 180, center = true);   


  translate([0,0,39.5]) cube([60,60,79], center = true);

}   



//translate([-150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=55, d=10, $fn = 180, center = true);




//Blades

for(i=[0:23]){    
translate([-150,-47-5,79-5]) rotate([0,90,0]) rotate([0,0,i*15]) translate([-45.5,-12,0])
difference(){
cylinder(h=70-15, d=26, $fn = 180, center = true);
    
cylinder(h=70-15+1, d=20, $fn = 180, center = true); 
 
translate([14,0,0]) cube([28,28,70-15+1], center = true);

translate([0,-14,0]) cube([28,28,70-15+1], center = true);    
    
} 
    
} 



//Frame around blades

difference(){  
translate([-150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=70-15, d=120, $fn = 180, center = true);
  
translate([-150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=64-15, d=121, $fn = 180, center = true);    
    
 translate([-150,-47-5,79-5]) rotate([0,90,0]) cylinder(h=72-15, d=100-8-1, $fn = 180, center = true);   


}   




translate([-124,-47-5,79-5]) rotate([0,90,0]) cylinder(h=3, d=120, $fn = 180, center = true);

//translate([-124-52,-47-5,79-5]) rotate([0,90,0]) cylinder(h=3, d=120, $fn = 180, center = true);














////////////////////////////////////////////////
//motor attachment
////////////////////////////////////////////////


translate([-200-100,-47-5,79]){
    
//disc   
    
/*difference(){
translate([0,0,-5]) rotate([0,90,0])  cylinder(h=3, d=50, $fn = 180, center = true);
    
translate([0,0,0-5]) rotate([0,90,0]) cylinder(h=55, d=15, $fn = 180, center = true);    

for(i=[0:3]){
translate([0,0,0-5]) rotate([0,90,0]) rotate([0,0,45+90*i]) translate([0,17,0]) cylinder(h=5, d=3, $fn = 180, center = true);
    
}    
} 
*/



difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=6, d1=34,d2=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=5, $fn = 90, center = true); 
} 

//nut holder
translate([9,0,0]){   
difference(){ 
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=12, d=20, $fn = 90, center = true);    
    
translate([19,0,-5]) rotate([0,90,0])  cylinder(h=13, d=9, $fn = 6, center = true); 
}
}


difference(){ 
translate([13,0,-5]) rotate([0,90,0])  cylinder(h=6, d=34, $fn = 90, center = true);    
    
translate([13,0,-5]) rotate([0,90,0])  cylinder(h=7, d=17, $fn = 90, center = true); 
}


difference(){ 
translate([8,0,-5]) rotate([0,90,0])  cylinder(h=4, d=34, $fn = 90, center = true);    
    
translate([8,0,-5]) rotate([0,90,0])  cylinder(h=4, d2=17,d1=28, $fn = 90, center = true); 
}





difference(){ 
translate([-2,0,-5]) rotate([0,90,0])  cylinder(h=16, d=34, $fn = 90, center = true);    
    
translate([-2,0,-5]) rotate([0,90,0])  cylinder(h=17, d=28, $fn = 90, center = true); 
}

}








///////////////////////////////////////////////