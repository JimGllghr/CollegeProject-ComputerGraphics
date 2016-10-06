#include "colors.inc"
#include "metals.inc"
#include "woods.inc"
#include "horse.pov"   
#include "pawn.pov" 
#include "rook.pov"
#include "bishop.pov"
camera {
   location<13,5,10>
   look_at <5,2,2>
}
/*  PAWNS */  
#declare BG_light = union{object{pawn rotate<180,0,0>} texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }}   
light_source {
    <3, 8, -6>
    rgb<.709,0.69,.886>
    looks_like { BG_light }
  }

#declare pawn_body = lathe{ quadratic_spline 8,
                       <0,0>,<0.5,0>,<0.5,0.25>,<0.4,0.35>,<0.2,0.95>,
                       <0.25,1>,<0.2,1.05>,<0,1.1> 
                       }            
                                                  
#declare gold_pawn = union{
                        object{pawn_body}
                        sphere{<0,1.35,0> 0.3}
                        texture{T_Gold_1B}
                        }
#declare silver_pawn = union{
                        object{pawn_body}
                        sphere{<0,1.35,0> 0.3}
                        texture{T_Silver_1B}
                        }
                                                              
/* Horizontal Plane */
plane{ <0,2,0>, -0.012 pigment{ rgb<.043,0.007,.388> } }
/* Chess Board */
box{ <9.75,-0.01,8.25> <-2.25,0.0,-3.75> 
                pigment{checker pigment{image_map{"whitemarble.png"}},pigment{image_map{"marble.png"}} 
                        scale<1.5,0,1.5> translate<0.75,0,0.75>} 
   }
/* Display Chess set */       
//gold pawns
object{pawn_gold scale .5 translate <0,0,-3> }   
object{pawn_gold scale .5 translate <0,0,-1.5>}
object{pawn_gold scale .5}
object{pawn_gold scale .5 translate <0,0,1.5>}
object{pawn_gold scale .5 translate <0,0,3>}
object{pawn_gold scale .5 translate <0,0,4.5>}
object{pawn_gold scale .5 translate <0,0,6>}    
object{pawn_gold scale .5 translate <0,0,7.5>} 
//gold higher ups   
object{rook_gold scale .5 translate <-1.5,0,-3>}   
object{horse_gold scale .5 translate <-1.5,0,-1.5>}
object{bishop_gold scale .3 rotate<180,0,0> translate <-1.5,4.6,0>}
object{gold_pawn translate <-1.5,0,1.5>}
object{gold_pawn translate <-1.5,0,3>}
object{bishop_gold scale .3 rotate<180,0,0> translate <-1.5,4.6,4.5>}
object{horse_gold scale .5 translate <-1.5,0,6>}    
object{rook_gold scale .5 translate <-1.5,0,7.5>} 

//silver pawns
object{pawn_silver scale .5 translate <7.5,0,-3>}   
object{pawn_silver scale .5 translate <7.5,0,-1.5>}
object{pawn_silver scale .5 translate <7.5,0,0>}
object{pawn_silver scale .5 translate <7.5,0,1.5>}
object{pawn_silver scale .5 translate <7.5,0,3>}
object{pawn_silver scale .5 translate <7.5,0,4.5>}
object{pawn_silver scale .5 translate <7.5,0,6>}    
object{pawn_silver scale .5 translate <7.5,0,7.5>}         
//silver higher ups  
object{rook_silver scale.5 translate <9,0,-3>}   
object{horse_silver scale .5 translate <9,0,-1.5>}
object{bishop_silver scale .3 rotate<180,0,0> translate <9,4.6,0>}
object{silver_pawn translate <9,0,1.5>}
object{silver_pawn translate <9,0,3>}
object{bishop_silver scale .3 rotate<180,0,0> translate <9,4.6,4.5>}
object{horse_silver scale .5 translate <9,0,6>}    
object{rook_silver scale.5 translate <9,0,7.5>}   
 

//object{pawn rotate <180,0,0> translate<5, 10, 2>}   
