// Stabilo point 88
// Plotter pen adapter 

include <plotter_pen_adapters_common.scad>;
 
pen_top_diameter = 8.36 ; 
pen_bottom_diameter = 6.20 ; 

diameter_spacing = 0.3 ; // increase = easier to slide the pen. If you set it to 0 it will be very hard to get the pen in.

height_where_pen_diameter_change = 19.20 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 10 ;


adapter_minus_pen() ;
