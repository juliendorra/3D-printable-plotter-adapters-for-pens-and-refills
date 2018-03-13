module plotter_pen(height=44) {
	
	pen_diameter = 11.5;	   // diameter of the main body
	band_full_thickness = 2;   // thickest point of the band
	band_edge_thickness = 1.3; // thinnest point of the band
	band_full_diameter = 16.5; // diameter at widest point of band
	band_edge_diameter = 13.5; // diameter where band starts to angle in
	band_mid_height = 28.3;    // midline of band, from the pen tip

    profile = [
        // measurements starting from the tip
        // [radius, distance from tip]

        // pen tip
        [0,0],
        [0.1, 0],
        [0.2, 0.1],
        [0.925, 2.5],
        [0.925, 2.85],
        [1.75, 2.85],
        [1.75, 5.10],
        [2.5, 5.85],
        [3.25, 11.2],
        [3.25, 12.2],
        [4.5,12.2],
        // end tip

        // pen body
        [pen_diameter       / 2, 16.25],
        [pen_diameter       / 2, band_mid_height - (band_full_thickness / 2)],
        [band_edge_diameter / 2, band_mid_height - (band_full_thickness / 2)],
        [band_full_diameter / 2, band_mid_height - (band_edge_thickness / 2)],
        [band_full_diameter / 2, band_mid_height + (band_edge_thickness / 2)],
        [band_edge_diameter / 2, band_mid_height + (band_full_thickness / 2)],
        [pen_diameter       / 2, band_mid_height + (band_full_thickness / 2)],
        [pen_diameter       / 2, height],
        [0,height],
        // end body

    ];

    rotate([180, 0, 0]){
        translate([0, 0, -height])
        rotate_extrude($fn=50)
        polygon(points=profile);
    }

}

plotter_pen(height=44);
