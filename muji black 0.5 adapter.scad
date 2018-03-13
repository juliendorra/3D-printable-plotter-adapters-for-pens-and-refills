// Plotter pen adapter for Muji black 0.5 pen
// 
// Refactored by Julien Dorra
// Original code by Sasha Kovar <sasha-thing@arcocene.org>
// from a design by Brian Boucheron <brian@boucheron.org>

include <plotter_pen_adapters_common.scad>;

adapter_outer_diameter = 11.5; // outer diameter of the main body

pen_top_diameter = 9.25; 
pen_bottom_diameter = 8.25; //make it smaller to stop the pen. Might not be needed if you just want the pen to press down thanks to gravity

pen_height_of_diameter_change = 16.13 ; // this is usually the body/cap limit on the body of the pen

adapter_height_above_band = 13.5;
adapter_height_below_band = 13.5;

module adapter_body () {
translate([0,0,band_to_paper])  
    union() {
        band();
        cylinder(r=adapter_outer_diameter/2, h=adapter_height_above_band, $fn=80);
        
        translate([0,0,-adapter_height_below_band]) 
            cylinder(r=adapter_outer_diameter/2, h=adapter_height_below_band, $fn=80);
    }
    }

//
    
difference() {
    
        color ("white") adapter_body () ;
       
        color ("red") translate([0,0,pen_height_of_diameter_change])     
                cylinder(r=pen_top_diameter/2, 
                         h= adapter_height_above_band + adapter_height_below_band, 
                         $fn=80);
        
       color ("blue") translate([0,0,0]) 
                cylinder(r=pen_bottom_diameter/2, 
                         h=pen_height_of_diameter_change, 
                         $fn=80);
        
}
