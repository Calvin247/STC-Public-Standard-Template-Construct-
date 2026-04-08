//translate([0,0,7-1.5])cube([17,17,17+14-3], center = true);
//rotate([0,90,0]) cylinder(h = 50, d=8+0.25, $fn = 180, center = true);







Animate_01();




module Animate_01(){

translate([100+$t*200,0,0]){
SpoolL();
Stand();
}


mirror([1,0,0]){
translate([100+200,0,0]){    
SpoolL();
Stand();    
}

    
} }   








module SpoolL(){    /////////////////////////////////////////////
 
difference(){    
union(){    
//Right wall    
translate([130/2+6.5,0,0]) rotate([0,90,0]) cylinder(h = 13, d=300, $fn = 180, center = true);
//Left wall    
translate([-130/2-6.5,0,0]) rotate([0,90,0]) cylinder(h = 13, d=300, $fn = 180, center = true);   
//center   
translate([0,0,0]) rotate([0,90,0]) cylinder(h = 130, d=130, $fn = 180, center = true);      
}

translate([0,0,0]) rotate([0,90,0]) cylinder(h = 160, d=32, $fn = 180, center = true); 
}
    
}                   /////////////////////////////////////////////






module Stand(){


//spool rod
translate([100+100,0,0]) rotate([0,90,0]) cylinder(h = 400, d=32, $fn = 180, center = true); 

//box
translate([150,0,-100])cube([100,100,300], center = true);

translate([75,0,-300])cube([250,100,100], center = true);


 



//rod attachment        ////////////////////////////////////////
translate([0,75,-350]) rotate([0,90,0]) cylinder(h = 30, d=20, $fn = 180, center = true); 

translate([0,-75,-350]) rotate([0,90,0]) cylinder(h = 30, d=20, $fn = 180, center = true); 

translate([175,75,-350]) rotate([0,90,0]) cylinder(h = 30, d=20, $fn = 180, center = true); 

translate([175,-75,-350]) rotate([0,90,0]) cylinder(h = 30, d=20, $fn = 180, center = true); 

translate([175,0,-350])cube([30,150,20], center = true);

translate([0,0,-350])cube([30,150,20], center = true);



                        ////////////////////////////////////////
                        
}       



//rods
translate([200+100,75,-350]) rotate([0,90,0]) cylinder(h = 500, d=8, $fn = 180, center = true); 

translate([200+100,-75,-350]) rotate([0,90,0]) cylinder(h = 500, d=8, $fn = 180, center = true);

mirror([1,0,0]){
translate([200+100,75,-350]) rotate([0,90,0]) cylinder(h = 500, d=8, $fn = 180, center = true); 

translate([200+100,-75,-350]) rotate([0,90,0]) cylinder(h = 500, d=8, $fn = 180, center = true);
}


                        