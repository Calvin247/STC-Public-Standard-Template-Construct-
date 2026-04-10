//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);


difference(){
union(){
cylinder(h = 2, d=150, $fn = 360, center = true);
    
for(i=[0,1])mirror([0,0,i])translate([0,0,6.5]) cylinder(h = 1, d=160, $fn = 360, center = true);    

for(i=[0,1])mirror([0,0,i])translate([0,0,3.5]) cylinder(h = 5, d1=150, d2=160, $fn = 360, center = true);


}

cylinder(h = 2, d=140, $fn = 360, center = true);

for(i=[0,1])mirror([0,0,i])translate([0,0,3.5]) cylinder(h = 5, d1=150-10, d2=160-10, $fn = 360, center = true);

for(i=[0,1])mirror([0,0,i])translate([0,0,6.5]) cylinder(h = 1, d=150, $fn = 360, center = true); 

}






difference(){
union(){    
cylinder(h = 14, d=30, $fn = 180, center = true);    
for(i=[0:1])rotate([0,0,i*90])cube([5,150,14], center = true);
}

//outer smoothing
difference(){
cylinder(h = 3, d=160, $fn = 360, center = true);
cylinder(h = 3, d=150, $fn = 360, center = true);

}

//enter hole
cylinder(h = 40, d=11, $fn = 180, center = true); 

//bearing
for(i=[0:1]) mirror([0,0,i]) translate([0,0,4.5]) cylinder(h = 5, d=16.3, $fn = 90, center = true);

}
//cylinder(h = 1, d=200, $fn = 180, center = true);