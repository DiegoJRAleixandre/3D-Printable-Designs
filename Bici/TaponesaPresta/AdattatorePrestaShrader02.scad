/*  Presta Schrader Adapter
    http://www.thingiverse.com/thing:1594349/
    AdattatorePrestaShrader02.scad
    by fpetrac
    
    based on Screw Thread Lib Michael Murray 2015
    see https://micksworkshop.wordpress.com/3d-printing/screw-threads/
    and
    knurledFinishLib_v2.scad Written by aubenc @ Thingiverse
    see http://www.thingiverse.com/thing:32122
*/

include <screw-thread-lib.scad>
include <knurledFinishLib_v2.scad>
Imm=25.4;


difference() {
    union(){
        knurled_cyl( Imm/5,Imm*8/16, Imm*3/32, Imm*3/32, Imm*1/64,Imm*1/16,1);
        //Schrader (5/16" × 32 TPI).
        thread(dia=Imm*5/16,pitch=Imm/32,length=Imm/2,unit="mm");
    }
    //Presta (15/64" × 32 TPI)
    thread(dia=Imm*16/64,pitch=Imm/32,length=1+Imm/2,unit="mm");
}

