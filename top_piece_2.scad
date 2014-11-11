// Science labb project for MY4777 3-D printing class at Michigan Technological University 
// Apperatus for ceramic plating on wires



/////////////////////////////////////////////////////////////////////////////////////////////////////
//Taking holes out of top plate
difference()
{
translate([0,0,15])cylinder(r=22, h=5,$fn=100); //top disk plate
translate([0,0,-1])cylinder(r=.75,h=50,$fn=100); //wire hole in top plate
translate([0,-2.5,18])cube(size=[30,5,5]); //exit for wire to attach to top
}

//Taking holesout of bottom plate
difference()
{
translate([0,0,5])cylinder(r=22, h=5,$fn=100);//moving plate off of plane
for ( i = [0 : 5] )//number of mesh pegs
{
   rotate( i * 360 / 6, [0, 0,1])
    translate([0, 15, 2.5])
    cylinder(r=3,h=5,$fn=100);
}
translate([0,0,-1])cylinder(r=.75,h=50);//wire hole in bottom plate
}
difference()
{
translate([0,0,10])cylinder(r=7,h=25,$fn=100); //center shaft
translate([0,0,-1])cylinder(r=.75,h=50,$fn=100); //wire hole through center shaft
translate([0,0,25])cylinder(r=4,h=30,$fn=100); //conecting hole in center shaft
translate([0,-2.5,18])cube(size=[30,5,5]); //exit for wire in center shaft
rotate([0,270,0]) translate([30,0,3])cylinder(r=1.5,h=4,$fn=100);


}
//1.5