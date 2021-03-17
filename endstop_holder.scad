difference() {
    union() {
        translate([-13.5, 0, 0]) cube([23.5, 2.5, 20]);
        translate([-13.5, 0, 0]) cube([10, 2.5, 35]);
        translate([-8.5, 0, 35]) rotate([-90, 0, 0]) cylinder(d=10, h=2.5, $fn=48);
    }
    for(i=[0, 1]) {
        translate([3,-1,5.5+i*10]) rotate([-90, 0, 0]) cylinder(d=2.7, h=20, $fn=32);
        translate([3, 2.5-2.1, 5.5+i*10]) rotate([-90, 0, 0]) cylinder(d=6.1, h=20, $fn=6);
        translate([-3.5-4.5-0.5,-1, 15+i*20]) rotate([-90, 0, 0]) cylinder(d=5.2, h=20, $fn=32);
    }
}