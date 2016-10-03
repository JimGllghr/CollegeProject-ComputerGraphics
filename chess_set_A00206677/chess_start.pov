#include "colors.inc"
#include "metals.inc"
#include "woods.inc"
#include "horse.pov"   
#include "pawn.pov" 
#include "rook.pov"
#include "bishop.pov"
camera {
//   location <3.75-8*cos(2*pi*clock), 5, 2.25-8*(sin(2*pi*clock))>  
   location<13,5,20>
   look_at <5,2,2>
}
light_source {< 2, 13, -10> color White
}
/*  PAWNS */
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
plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }
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
object{bishop_gold scale .3 translate <-1.5,0,0>}
object{gold_pawn translate <-1.5,0,1.5>}
object{gold_pawn translate <-1.5,0,3>}
object{bishop_gold scale .3 translate <-1.5,0,4.5>}
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
object{bishop_silver scale .3 translate <9,0,0>}
object{silver_pawn translate <9,0,1.5>}
object{silver_pawn translate <9,0,3>}
object{bishop_silver scale .3 translate <9,0,4.5>}
object{horse_silver scale .5 translate <9,0,6>}    
object{rook_silver scale.5 translate <9,0,7.5>}      
