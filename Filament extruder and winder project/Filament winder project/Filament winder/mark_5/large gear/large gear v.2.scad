
A=60;
B=120;




difference(){
union(){
    
translate([0,0,17.5])cylinder(h = 15, d=8.25+6+10, $fn = B, center = true);    
    
    
for(i=[0:175/2])rotate([0,0,i*360/11/4/2]) translate([28*2,0,0])cylinder(h = 20, d=2, $fn = A, center = true);

cylinder(h = 20, d=28*2*2, $fn = B, center = true);


for(j=[0:1])rotate([0,0,j*90]){
difference(){
translate([0,0,17.5])cylinder(h = 15, d1=45+60, d2=14.5+10, $fn = B, center = true);    

rotate([0,0,45]) for(i=[0:1]) mirror([0,i,0])translate([0,21.5+10,17.5]) cube([70+50,40+10,40], center = true);

cylinder(h = 21+40, d=8.25, $fn = A, center = true);

}}


}

for(i=[0:175/2])rotate([0,0,i*360/11/4/2+(360/11/4/2/2)]) translate([28*2,0,0])cylinder(h = 21, d=2.01, $fn = A, center = true);
    
//m3 holes
translate([0,0,11+2.5])rotate([90,0,0]) cylinder(h = 15+10, d=3.2, $fn = B, center = true);  

translate([0,0,18+2.5])rotate([0,90,0]) cylinder(h = 15+10, d=3.2, $fn = B, center = true);  

cylinder(h = 21+40, d=8.25, $fn = A, center = true);


//plate holes
for(i=[0:3])rotate([0,0,i*90])translate([34,0,0]) resize([25,42,40]) cylinder(h = 21+40, d=30, $fn = A, center = true);


}