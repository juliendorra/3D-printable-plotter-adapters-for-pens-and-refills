// Plotter pen adapter for Muji 0.5 color refills
// 
// Refactored by Julien Dorra
// based on code by Sasha Kovar <sasha-thing@arcocene.org>
// from a design by Brian Boucheron <brian@boucheron.org>
// and code and measurements by Ed Nisley KE4ZNU April 2015

include <plotter_pen_adapters_common.scad>;

pen_top_diameter = 6.5; 
pen_bottom_diameter = 3.75;

height_where_pen_diameter_change = 14.88 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 10 ;
   
difference() {
    
        color ("white") adapter_body () ;
       
        color ("red") translate([0,0,height_where_pen_diameter_change])     
                cylinder(r=pen_top_diameter/2, 
                         h= 100 , 
                         $fn=80);
        
     color ("blue") cylinder(r=pen_bottom_diameter/2, 
                         h=height_where_pen_diameter_change, 
                         $fn=80);
      
    translate ([0, 0, bottom_cut_off_height/2]) 
        cube ([20, 20, bottom_cut_off_height], center=true) ;
    
    translate ([0, 0, 50/2 + top_cut_off_height]) 
        cube ([20, 20, 50], center=true) ;
}
