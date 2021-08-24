//  New Style! 2021
//  Muji 0.5 gel pen color refills
//  Plotter pen adapter,

include <plotter_pen_adapters_common.scad>;

pen_top_diameter = 6; 
pen_bottom_diameter = 3.35 ; //pretty tight, could maybe ease up a little more

diameter_spacing = 0.3 ; // increase = easier to slide the pen. If you set it to 0 it will be very hard to get the pen in.

height_where_pen_diameter_change = 21 ; // Measured from the tip (ie. paper)

//bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 
bottom_cut_off_height = 11.88 ; // keeps the tapered shape
top_cut_off_height = total_body_height - 10 ;
 
adapter_minus_pen() ;

