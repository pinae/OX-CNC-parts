module m3screwPos (outer_diameter_top, height) {
    difference() {
        union() {
            cylinder(d=outer_diameter_top, h=height, $fn=48);
            cylinder(d=10, h=height-1.5, $fn=48);
        }
        translate([0, 0, -1]) cylinder(d=6.48, h=3.4, $fn=6);
        translate([0, 0, -1]) cylinder(d=3.2, h=height+2, $fn=24);
    }
}


union() {
    translate([14, 2.5, 0]) m3screwPos(7, 6);
    translate([96.52, 2.5, 0]) m3screwPos(7, 6);
    translate([14+1.3+50.8, 2.5+5.1, 0]) m3screwPos(7, 6);
    translate([14+1.3+50.8, 2.5+5.1+27.9, 0]) m3screwPos(7, 6);
    translate([14+1.3, 2.5+5.1+27.9+15.2, 0]) m3screwPos(6, 6);
    
    translate([8.5, 9.5, 6-1.5]) rotate([180, 0, 0]) m3screwPos(10, 6-1.5);
    translate([8.5, 35.5+9.5, 6-1.5]) rotate([180, 0, 0]) m3screwPos(10, 6-1.5);
    translate([8.5+87, 14.5, 6-1.5]) rotate([180, 0, 0]) m3screwPos(10, 6-1.5);
    translate([8.5+87, 35.5+9.5, 6-1.5]) rotate([180, 0, 0]) m3screwPos(10, 6-1.5);
    difference() {
        hull() {
            for(i=[0, 1]) for(j=[0, 1]) translate([5+i*93, 5+j*43, 0]) cylinder(d=10, h=6-1.5, $fn=32);
        }
        translate([14, 2.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([96.52, 2.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([14+1.3+50.8, 2.5+5.1, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([14+1.3+50.8, 2.5+5.1+27.9, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([14+1.3, 2.5+5.1+27.9+15.2, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([8.5, 9.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([8.5, 35.5+9.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([8.5+87, 14.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        translate([8.5+87, 35.5+9.5, -1]) cylinder(d=9.9, h=9, $fn=32);
        hull() {
            for(i=[0, 1]) for(j=[0, 1]) translate([13+i*75, 12+j*18.5, -1]) cylinder(d=5, h=6-1.5+2, $fn=32);
        }
    }
}