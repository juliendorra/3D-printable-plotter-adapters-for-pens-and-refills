// Edding 1255 calligraphy pen
// Plotter pen adapter

include <plotter_pen_adapters_common.scad>;
 
pen_top_diameter = 9.01 ; 
pen_bottom_diameter = 5.85 ; 

diameter_spacing = 0.3 ; // increase = easier to slide the pen. If you set it to 0 it will be very hard to get the pen in.

height_where_pen_diameter_change = 9.30 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 10 ; 

simplified_body_shape = true ; // we need the simplified body because the real body is too thin at the bottom, and this adapter need to go nearly all the way down to the tip 

adapter_minus_pen() ;
