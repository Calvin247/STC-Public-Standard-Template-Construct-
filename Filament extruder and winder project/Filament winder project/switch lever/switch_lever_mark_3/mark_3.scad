//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);



difference(){
    
union(){    
cube([40,20,11], center = true);

for(i=[-1,1]) translate([i*20,0,0]) cylinder(h = 11, d=20, $fn = 60, center = true); 
}   

translate([0,-5,2]) cube([12.5+0.5,6.5+0.5,7], center = true);    
for(i=[-1:1]) translate([i*9.8,4.5,1]) cylinder(h = 9, d=6.25, $fn = 30, center = true); 
 
for(i=[-1:1]) translate([i*9.8,4.5,4.5]) cylinder(h = 2, d1=6.25, d2=6.5+3, $fn = 30, center = true); 
    


for(i=[-1:1])translate([i*4.5,-5,-2.4])cylinder(h = 1.8, d1=1.25, d2=4-0.4*(i*i), $fn = 30, center = true);
    

for(i=[-1:1])translate([i*4.5,-5,-7+2.2]) cube([3,3,3], center = true);
    

for(j=[-1:1]) for(i=[-1,1]) translate([j*9.8+i*(2.5/2),4.5,0]) cylinder(h = 14, d=1.25, $fn = 30, center = true);
    


//Hexagon
for(i=[-1,1]) translate([i*20,0,8-5]) cylinder(h = 5, d=12, $fn = 6, center = true); 
    
for(i=[-1,1]) translate([i*20,0,8-5]) cylinder(h = 20, d=6.26, $fn = 30, center = true); 
    

    
}   



translate([0,0,-15.5]){


difference(){    
union(){    
cube([40,20,20], center = true);

for(i=[-1,1]) translate([i*20,0,0]) cylinder(h = 20, d=20, $fn = 60, center = true); 
    
for(i=[-1,1]) translate([i*20,0,-7.5]) resize([20,50,5]) cylinder(h = 5, d=50, $fn = 60, center = true); 
    
translate([0,0,-7.5]) cube([40,50,5], center = true);

for(i=[-1:1]) for(j=[0,1]) mirror([0,j,0]) translate([i*16,17.5,6]) cube([5,15,30], center = true);

}

cube([28,14,20], center = true);

for(i=[-1,1]) translate([i*20,0,8-5]) cylinder(h = 30, d=6.26, $fn = 30, center = true); 


for(i=[-1:1]) for(j=[0,1]) mirror([0,j,0]) translate([i*16,17.5+5,6+8.35]) rotate([30,0,0]) cube([6,15,50], center = true);

}

}



