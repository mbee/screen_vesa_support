module draw_support(screen_width = 5) {
    difference() {
        cube([25,62,18]);
        translate([-0.5,  2,                 1.5]) cube([26, 6,  0.5 + screen_width]);
        translate([-0.5,  7,                -1])   cube([26, 56, 3   + screen_width]);
        translate([2,    44, screen_width +  1])   cube([21, 16, 15  - screen_width]);
        translate([-0.5, -1, screen_width +  4])   cube([26, 43, 15  - screen_width]);
        translate([9.5,  44,                13])   cube([6,  16, 6]);
    }
}

rotate([0, 180, 0]) {
    draw_support(5);
    translate([35, 0, 0]) draw_support(10);
}
