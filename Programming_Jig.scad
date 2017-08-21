DIAMETER=49.3;
HOLE=1.5;
/*GND_COORDINATE=[-11,5,0];
IO_ZERO_COORDINATE=[4.5,12,0];
POWER_COORDINATE=[-2.5,13,0];
TX_COORDINATE=[-8.5,7.5,0];
RX_COORDINATE=[-7.1,9,0];*/
GND_COORDINATE=[12.72,-5.3,0];
IO_ZERO_COORDINATE=[13.43,2.47,0];
POWER_COORDINATE=[10.25,7.42,0];
TX_COORDINATE=[8.5,9.19,0];
RX_COORDINATE=[5.65,11.66,0];
$fn=100;
difference() {
    union() {
        cylinder(h=0.5, d=DIAMETER);
        translate([0,0,0.5]) {
            cylinder(h=1.9, d=DIAMETER-1);
            translate([0,0,1.9]) {
                cylinder(h=3, d=(DIAMETER+8));
            };
        };
    };
    translate([0,0,-1]) {
        union() {
            translate(GND_COORDINATE) {
                cylinder(h=10, d=HOLE);
            };
            translate(IO_ZERO_COORDINATE) {
                cylinder(h=10, d=HOLE);
            };
            translate(POWER_COORDINATE) {
                cylinder(h=10, d=HOLE);
            };
            translate(TX_COORDINATE) {
                cylinder(h=10, d=HOLE);
            };
            translate(RX_COORDINATE) {
                cylinder(h=10, d=HOLE);
            };
        };
    };
};