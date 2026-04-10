rotate([0,0,-30]){


/*

//////////////////////////////////////
//The fan perimiter in green. The fan fits in this cylinder
//////////////////////////////////////

difference(){
color([0,1,0])cylinder(h = 60, r=73, $fn = 180, center = false);
    
    
color([0,1,0]) translate([0,0,-1]) color([0,1,0]) cylinder(h = 62, r=70, $fn = 180, center = false);
 
    
    
}
*/



/////////////////////////////////////
// The first 180 degree turn in red
/////////////////////////////////////
difference(){
translate([0,5,0]){
difference(){
color([1,0,0])cylinder(h = 60, r=78, $fn = 180, center = false);
    
    
color([1,0,0]) translate([0,0,-1]) color([0,1,0]) cylinder(h = 62, r=75, $fn = 180, center = false);
 
    
    
}
}
    ////////////////////////////
    //erasing the one half of the red cylinder
    ////////////////////////////

    difference(){
    translate([-100,-100,-5]) cube([200,200,70], center = false); 
    
    translate([0,-101,-6]) cube([101,202,80], center = false); 
    }



}
/////////////////////////////////////
//the last turn in blue
/////////////////////////////////////
difference(){
translate([0,-10,0]){
difference(){
color([0,0,1])cylinder(h = 60, r=93, $fn = 180, center = false);
    
    
color([0,0,1]) translate([0,0,-1]) color([0,1,0]) cylinder(h = 62, r=90, $fn = 180, center = false);
 
    
    
}
}

    /////////////////////////////////
    //Erasing 3/4 of the blue cylinder
    /////////////////////////////////
    
    
    difference(){
    translate([0,-120,-5]) cube([120,220,70], center = false); 
    
    translate([-121,0,-6]) cube([121,202,80], center = false); 
    
       
        
     } 
rotate([0,0,30]) translate([-121,-121,-6]) cube([121,121,80], center = false);

}
}










////////////////////////////////////
//The 2 walls of the extention frame
////////////////////////////////////

difference(){
union(){
translate([-97.57,-90,0]) cube([3,90,60], center = false); 

difference(){
translate([-37.57,-90,0]) cube([3,90,60], center = false); 
    
color([0,1,0])cylinder(h = 150, r=70, $fn = 180, center = true);    
}


////////////////////////////////////
//Top cover
////////////////////////////////////

difference(){
rotate([0,0,-30]) translate([0,-10,-3]) color([0,0,1])cylinder(h = 3, r=93, $fn = 180, center = false);
 
 rotate([0,0,-30])  
translate([0,-150,-10]) cube([100,300,80], center = false);    
    
    
}




rotate([0,0,-30])
translate([0,5,-3]) color([1,0,0])cylinder(h = 3, r=78, $fn = 180, center = false);




translate([-97.57,-90,-3]) cube([63,90,3], center = false); 



























/////////////////////////////////////
//Top cover
/////////////////////////////////////

difference(){
rotate([0,0,-30]) translate([0,-10,60]) color([0,0,1])cylinder(h = 3, r=93, $fn = 180, center = false);
 
 rotate([0,0,-30]) translate([0,-150,-10]) cube([100,300,80], center = false);    
    
    
}




rotate([0,0,-30]) translate([0,5,60]) color([1,0,0])cylinder(h = 3, r=78, $fn = 180, center = false);




translate([-97.57,-90,60]) cube([63,90,3], center = false); 
}

cylinder(h = 150, r=50, $fn = 180, center = true);



}




















