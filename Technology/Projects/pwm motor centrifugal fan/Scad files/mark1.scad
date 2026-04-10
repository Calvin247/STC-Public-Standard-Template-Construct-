difference(){


cylinder(h = 8, r1 = 10, r2 = 10, $fn = 180, center = true);




cylinder(h = 6, r1 = 11, r2 = 11, $fn = 180, center = true);
    
cylinder(h = 11, r1 = 5, r2 = 5, $fn = 180, center = true);
    
}



for(i=[0:11]){
difference(){
    

rotate([0,0,i*30])    
    
translate([0,7.5,0]) rotate([0,0,0]) cube([10,12,6],center = true);
    

 

difference(){
     
 cylinder(h = 8, r1 = 15, r2 = 15, $fn = 180, center = true);    
     
  cylinder(h = 9, r1 = 10, r2 = 10, $fn = 180, center = true);     
}
  

    
cylinder(h = 11, r1 = 5, r2 = 5, $fn = 180, center = true);    





rotate([0,0,i*30])
translate([15,-0,0]){
cylinder(h = 6, r = 15,, $fn = 180, center = true);

difference(){
    
cylinder(h = 6, r = 25,, $fn = 180, center = true);   
   
   
cylinder(h = 7, r = 16,, $fn = 180, center = true);  
    
}
}


















}

}



