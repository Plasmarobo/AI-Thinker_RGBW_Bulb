DIAMETER=49.2;
LIP_HEIGHT=0.5;
WALL_THICKNESS=6.2;
HOLD_RING_DIAMETER=DIAMETER-1.8;
HOLD_RING_HEIGHT=1.6;
TOP_DIAMETER=DIAMETER+8;
TOP_HEIGHT=2.5;
TOP_HOLE_DIAMETER=22;
HOLE=1.75;
/*GND_COORDINATE=[-11,5,0];
IO_ZERO_COORDINATE=[4.5,12,0];
POWER_COORDINATE=[-2.5,13,0];
TX_COORDINATE=[-8.5,7.5,0];
RX_COORDINATE=[-7.1,9,0];*/
IO_ZERO_COORDINATE=[12.1,-5.0,0];
POWER_COORDINATE=[12.7,2.6,0];
RX_COORDINATE=[10.25,7.42,0];
TX_COORDINATE=[8.5,9.19,0];
GND_COORDINATE=[5.65,10.96,0];
$fn=200;
difference() {
    union() {
        cylinder(h=LIP_HEIGHT, d=DIAMETER);
        translate([0,0,LIP_HEIGHT]) {
            cylinder(h=HOLD_RING_HEIGHT, d=HOLD_RING_DIAMETER);
            translate([0,0,HOLD_RING_HEIGHT]) {
                cylinder(h=TOP_HEIGHT, d=(TOP_DIAMETER));
            };
        };
    };
    translate([0,0,-1]) {
        union() {
            cylinder(h=10, d=TOP_HOLE_DIAMETER);
            cylinder(h=5, d=HOLD_RING_DIAMETER-WALL_THICKNESS);
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