//wire holder




union() //adding "mesh" to disk
{
for ( i = [0 : 5] ) //number of coils
{
    rotate( i * 360 / 6, [0, 0,1]) 
    translate([0, 15, 35])
	 cylinder(r=3,h=60,$fn=100);
}
//for ( i = [0 : 11] ) //coil pegs to attach to top
{
    //rotate( i * 360 / 12, [0, 0,1])
    //translate([0, 15, 135])
    //cylinder(r=3,h=5); //peg demensions
}
}


difference()
{
translate([0,0,25])cylinder(r=12,h=15,$fn=100); //center shaft
translate([0,0,15])cylinder(r=.75,h=50,$fn=100); //wire hole through center shaft
translate([0,-2.5,27])cube(size=[30,5,5]); //exit for wire to attach to bottom
}
difference()
{
translate([0,0,25])cylinder(r=22, h=5,$fn=100); //bottom disk
translate([0,0,15])cylinder(r=.75,h=50,$fn=100); //wire hole through center shaft
translate([0,-2.5,27])cube(size=[30,5,5]); //exit for wire to attach to bottom
}
difference()
{
translate([0,0,35])cylinder(r=22, h=5,$fn=100); //top disk plate
translate([0,0,15])cylinder(r=.75,h=50,$fn=100); //wire hole through center shaft
}









