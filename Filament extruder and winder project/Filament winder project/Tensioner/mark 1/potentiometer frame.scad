//cube([120,120,3], center = true);
//translate([-45,-45,0])cylinder(h = 3, r=15, $fn = 180, center = true);
//rotate_extrude(convexity = 10, $fn = A) translate([20+1.5, 0, 0])circle(d = 3, $fn = B);





difference(){
    
union(){    
translate([0,0,-3]) resize([30,55,6+6]) cylinder(h = 6, d=30, $fn = 180, center = true);
//translate([-23/2,0,0]) cube([23,23,3], center = true);   
    
    
}    
translate([0,0,-3+3]) cylinder(h = 12, d=17, $fn = 180, center = true);



translate([-23/2,0,1.5]) cube([15.25,15.25,3], center = true);


translate([-22.6+3,0,0]) cube([15.25,15.25,20], center = true);


for(i=[-1,1])translate([0,i*36.6/2,0]) cylinder(h = 20, d=5.3, $fn = 180, center = true);

}





 



