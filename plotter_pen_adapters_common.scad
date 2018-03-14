// Measurements and modules common across adapters.

total_body_height = 43.25 ;

//-- Original HP plotter pen, which now serves as a body for the actual pen
 
BodyOutline = [                     // X values = (measured diameter)/2, Y as distance from tip
    [0.0,0.0],                      //  0 fiber pen tip
//  [2.0/2,1.4],                    //  1 ... taper (not buildable)
    [1.0/2,0.005],                  //  1 ... faked point to remove taper
    [2.0/2,0.0],[2.0/2,2.7],        //  2 ... cylinder
    [3.7/2,2.7],[3.7/2,4.45],       //  4 tip surround
    [4.8/2,5.2],                    //  6 chamfer
    [6.5/2,11.4],                   //  7 rubber seal face
    [8.9/2,11.4],                   //  8 cap seat
    [11.2/2,15.9],                  //  9 taper to body
    [11.5/2,28.0],                  // 10 lower body
    [13.2/2,28.0],[16.6/2,28.5],    // 11 lower flange = 0.5
    [16.6/2,29.5],[13.2/2,30.0],    // 13 flange rim = 1.0
    [11.5/2,30.0],                  // 15 upper flange = 0.5
    [11.5/2,43.25],                 // 16 upper body
    [0.0,43.25]                     // 17 lid over reservoir
    ];
    
    
// HP plotter pen adapter body
 
module adapter_body() {
    render(convexity=3)
        rotate_extrude($fn=80)
            polygon(points=BodyOutline);
}

// -- defaults values for a Staedtler Pigment Liner Pen

pen_top_diameter = 8.35 ; 
pen_bottom_diameter = 4.80 ; 

height_where_pen_diameter_change = 12.20 ; // Measured from the tip (ie. paper)

bottom_cut_off_height = height_where_pen_diameter_change - 3 ; 

top_cut_off_height = total_body_height - 11.25 ; // must be bigger than total_body_height - 12

// Substracting space for the pen from the HP plotter adapter body
  
module adapter_minus_pen() {
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

}
