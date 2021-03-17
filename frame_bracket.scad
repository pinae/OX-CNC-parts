m5washer_dia=11.8;
m5nut_dia=9.6;
difference() {
    rotate([-90, 0, 0]) cylinder(r=40, h=20, $fn=256);
    translate([-50, -1, -50]) cube([100, 52, 50]);
    translate([-50, -1, -1]) cube([50, 52, 52]);
    for(i=[0, 1]) {
        translate([3.1, 10, 10+i*20]) rotate([0, 90, 0]) cylinder(d=m5washer_dia, h=50, $fn=6);
        translate([-1, 10, 10+i*20]) rotate([0, 90, 0]) cylinder(d=5.2, h=50, $fn=64);
        translate([20+i*12, 10, 3.1]) cylinder(d=m5nut_dia, h=50, $fn=6);
        translate([20+i*12, 10, -1]) cylinder(d=5.2, h=50, $fn=64);
    }
}