difference() {
    union() {
        translate([-9.5, 0, 0]) cube([9.5+8, 30, 8.2]);
        cube([8, 30, 27.2]);
        translate([0, 0, 27.2-8]) cube([17, 30, 8]);
    }
    for(i=[-1, 1]) {
        translate([9, 15+i*10, 27.2-22.3]) rotate([0, -90, 0]) cylinder(d=4.2, h=30, $fn=32);
        translate([9, 15+i*10, 27.2-22.3]) rotate([0, -90, 0]) rotate([0, 0, 30]) cylinder(d=8, h=4.4, $fn=6);
    }
    translate([8+4, 15, 18.9]) cylinder(d=3.6, h=20, $fn=32);
    translate([8+4, 15, 18.9]) cylinder(d1=8, d2=3.6, h=2.2, $fn=32);
}

translate([-20, 0, 0]) difference() {
    union() {
        translate([-9.5, 0, 0]) cube([9.5+8, 20, 8.2]);
        cube([8, 20, 27.2]);
        translate([0, 0, 27.2-8]) cube([17, 20, 8]);
    }
    for(i=[-1, 1]) {
        translate([9, 10+i*4, 27.2-22.3]) rotate([0, -90, 0]) cylinder(d=4.2, h=30, $fn=32);
        translate([9, 10+i*4, 27.2-22.3]) rotate([0, -90, 0]) rotate([0, 0, 30]) cylinder(d=8, h=4.4, $fn=6);
    }
    translate([8+4, 10, 18.9]) cylinder(d=3.6, h=20, $fn=32);
    translate([8+4, 10, 18.9]) cylinder(d1=8, d2=3.6, h=2.2, $fn=32);
}