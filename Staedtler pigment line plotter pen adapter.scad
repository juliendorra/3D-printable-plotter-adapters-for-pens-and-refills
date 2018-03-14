// Plotter pen adapter for Staedtler Pigment Liner 
// 
// Refactored by Julien Dorra
// based on code by Sasha Kovar <sasha-thing@arcocene.org>
// from a design by Brian Boucheron <brian@boucheron.org>
// and code and measurements by Ed Nisley KE4ZNU April 2015

include <plotter_pen_adapters_common.scad>;

pen_top_diameter = 8.35 ; 
pen_bottom_diameter = 4.80 ; 

height_where_pen_diameter_change = 12.20 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 11.25 ; // The Staedtler Pigment Liner is conical so we cut off the adapter at a low height to keep a smaller diameter


adapter_minus_pen() ;
