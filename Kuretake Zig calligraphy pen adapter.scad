// Kuretake Zig calligraphy
// Plotter pen adapter

include <plotter_pen_adapters_common.scad>;
 
pen_top_diameter = 10.80 ; // 11.25 measured
pen_bottom_diameter = 7.41 ; 

diameter_spacing = 0.3 ; // increase = easier to slide the pen. If you set it to 0 it will be very hard to get the pen in.

height_where_pen_diameter_change = 19.17 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 10 ;

simplified_body_shape=true ;


adapter_minus_pen() ;
