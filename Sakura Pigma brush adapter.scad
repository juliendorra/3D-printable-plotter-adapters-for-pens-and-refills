// Sakura Pigma brush 
// Plotter pen adapter

include <plotter_pen_adapters_common.scad>;
 
pen_top_diameter = 8.18 ; 
pen_bottom_diameter = 4.87 ; 

diameter_spacing = 0.3 ; // increase = easier to slide the pen. If you set it to 0 it will be very hard to get the pen in.

height_where_pen_diameter_change = 13.25 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 11.5 ; // The Pigma brush is larger starting at 32.12 so we cut off the adapter at around 31.75 (total height of 43.25 - 11.5 ) 


adapter_minus_pen() ;
