







translate([0,0,9]) bearing();
filament();






//////////////////////////////////////////////////////////////
//1.75 mm filament
//////////////////////////////////////////////////////////////

module filament(){
rotate([0,90,0]) cylinder(h = 200, d=1.75, $fn = 180, center = true);

}



/////////////////////////////////////////////////////////////
//bearing  
/////////////////////////////////////////////////////////////

module bearing(){

difference(){
rotate([90,0,0]) cylinder(h = 5, d=16, $fn = 180, center = true);

rotate([90,0,0]) cylinder(h = 6, d=8, $fn = 180, center = true);
    
}}  