//
// ktRACK11
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;
W1 = 21;
W2 = W1+th*2;
H = 35;

A = 1;
B = 0;

if(A)
{
difference()
{
    union()
    {
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(H, d=W2, $fn=100);
        translate([-W2/2, 0, 0]) cube([W2, W2/2+2, H]);
    }
    
    translate([0, 0, th]) rotate([0, 0, 0]) cylinder(67, d=W1, $fn=100);
    
    translate([0, 12, 8]) rotate([-60, 0, 0]) hole();
    translate([0, 12, H-8]) rotate([-120, 0, 0]) hole();

}
}

if(B)
{
difference()
{
    union()
    {
        translate([-10/2, 0, -5]) cube([10, W2/2+2, H+10]);
    }
    
    translate([0, 12, 8]) rotate([-60, 0, 0]) cylinder( 10, d=3, $fn=100);
    translate([0, 12, 8]) rotate([180-60, 0, 0]) cylinder( 30, d=3, $fn=100);
    
    translate([0, 12, H-8]) rotate([-120, 0, 0]) cylinder( 10, d=3, $fn=100);
    translate([0, 12, H-8]) rotate([180-120, 0, 0]) cylinder( 30, d=3, $fn=100);
    
    //#translate([0, 12, 8]) rotate([-60, 0, 0]) hole();
    //#translate([0, 12, H-8]) rotate([-120, 0, 0]) hole();

}
}


module hole()
{
    rotate([0, 0, 0]) cylinder( th+gap2, d1=5, d2=3, $fn=100);
    rotate([0, -180, 0]) cylinder(5, d=5, $fn=100);
    translate([0, 0, -5]) rotate([0, -180, 0]) cylinder( 30, d=7.5, $fn=100);
    translate([0, 0, th]) rotate([0, 0, 0]) cylinder( 10, d=3, $fn=100);
}
