// Plotter pen adapter for Muji black 0.5 refills
// 
// Refactored by Julien Dorra
// Original code by Sasha Kovar <sasha-thing@arcocene.org>
// from a design by Brian Boucheron <brian@boucheron.org>

include <plotter_pen_adapters_common.scad>;

adapter_outer_diameter = 11.5; // outer diameter of the main body

pen_top_diameter = 6; 
pen_bottom_diameter = 3.75; //make it smaller to stop the pen. Might not be needed if you just want the pen to press down thanks to gravity

pen_height_of_diameter_change = 14.88 ; // this is usually the body/cap limit on the body of the pen. Measured from the tip (ie. paper)

adapter_height_above_band = 7;
adapter_height_below_band = 15;

module adapter_body () {
translate([0,0,band_to_paper])  
    union() {
        band();
        
        cylinder(r=adapter_outer_diameter/2, 
                 h=adapter_height_above_band + band_full_thickness, 
                 $fn=80);
                
        #translate([0,0,-band_to_body_tapering]) 
            cylinder(r=adapter_outer_diameter/2, 
                     h=band_to_body_tapering,
                     $fn=80);
        
         #translate([0,0,-band_to_body_tapering-body_taper]) 
            cylinder(r1=adapter_outer_diameter/3, 
                     r2=adapter_outer_diameter/2,
                     h=body_taper,
                     $fn=80);
        
    }
    }

//
   
   
difference() {
    
        color ("white") adapter_body () ;
       
        color ("red") translate([0,0,pen_height_of_diameter_change])     
                cylinder(r=pen_top_diameter/2, 
                         h= adapter_height_above_band + band_full_thickness + adapter_height_below_band , 
                         $fn=80);
        
       color ("blue") translate([0,0,0]) 
                cylinder(r=pen_bottom_diameter/2, 
                         h=pen_height_of_diameter_change, 
                         $fn=80);
      
    #cube ([20, 20, pen_height_of_diameter_change*2 - 5], center=true) ;
}
