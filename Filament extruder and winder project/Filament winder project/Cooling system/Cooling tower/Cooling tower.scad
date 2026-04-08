//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);








difference(){

union(){    
translate([0,0,0]) cube([30+6,60+6,230], center = true);

for(i=[-1:1])translate([0,30+6,i*76.5]) rotate([90,0,0]) resize([36,70+7,6]) cylinder(h = 16, d1=30, d2=50, $fn = 4, center = true); 

    
}    
    
    
translate([0,0,0]) cube([30,60,230+1], center = true);


/////////////////////////
//Air gaps
////////////////////////

for(i=[-1:1])translate([0,30,i*76.5]) rotate([90,0,0]) resize([20,43,30]) cylinder(h = 16, d=10, $fn = 4, center = true);  



}

/////////////////////////////////////////////////////////////
//Top connectors
/////////////////////////////////////////////////////////////


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




/////////////////////////////////////////////////////////////
//Bottom connectors
/////////////////////////////////////////////////////////////

translate([0,0,17.5]){
mirror([0,0,1]){
for(j=[0:1]) mirror([j,0,0]){
for(i=[0:1]) mirror([0,i,0]){
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










/////////////////////////////////////////////////////////////
//Top insert
/////////////////////////////////////////////////////////////


translate([0,0,113.5+3]){
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















