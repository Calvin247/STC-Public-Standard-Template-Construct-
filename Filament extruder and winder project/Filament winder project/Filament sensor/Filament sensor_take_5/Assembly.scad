use <left_wall.scad>
use <magnetHolder.scad>
use <hallEffectSensor.scad>
use <extras.scad>
use <right_wall.scad>




A = 0;


///////////////////////////////////////////////////////////////
//Assembly
///////////////////////////////////////////////////////////////

for(i=[0:1]) mirror([0,1,0]) translate([0,A*2,0]) rotate([-A*3,0,0]) leftWall();
    

rightWall();

translate([A*2,0,A*2]) magnetHolder();

translate([0,0,A*2]) hallEffectSensor();




if(A==0){
for(i=[0:1]) mirror([0,0,i]) translate([0,0,9]) 
bearing();

filament();
}









///////////////////////////////////////////////////////////////
//print
///////////////////////////////////////////////////////////////

//mirror([0,1,0])leftWall();

//magnetHolder();
//hallEffectSensor();

