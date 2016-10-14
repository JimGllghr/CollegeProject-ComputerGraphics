#include "colors.inc"
#include "metals.inc"
#include "woods.inc" 



#declare rook_top = union{cylinder{<0, 1.35>, <0, 1.65>, 0.6} hollow} 
#declare rook_cut1 = difference{object{rook_top} box{<-5,1.5,.3>,<5,1.66,.5>} hollow}   
#declare rook_cut2 = difference{object{rook_cut1} box{<5,1.5,-.3>,<-5,1.66,-.5>}  hollow} 
#declare rook_neck = union{cone{<0, 1.35>, 0.6,<0,1.15>, 0.4}  hollow} 
#declare rook_body = union{cylinder{<0,1.15><0,.6> 0.4} } 
#declare rook_bottom1 = union{cone{<0,.6>, 0.4,<0,.4>,0.6} } 
#declare rook_bottom2 = union{cylinder{<0,.4>,<0,.2> ,0.6} }    
#declare rook_bottom3 = union{cylinder{<0,.2>,<0,0> ,0.68} } 
#declare full_rook = union{object{rook_cut2} object{rook_neck} object{rook_body} object{rook_bottom1} object{rook_bottom2} object{rook_bottom2}}
#declare rook_outline1 = difference{object{full_rook} box{<5,0,-4><0.1,1.66,4>} } 
#declare rook_outline2 = difference{object{rook_outline1} box{<-5,0,-4><-0.001,1.66,4>}  }  
#declare rook_outline3 = difference{object{rook_outline2} cylinder{<0,1.64><0,0.2>0.3} }  
#declare rook_outline4 = difference{object{rook_outline3} cone{<0,0.2>,0.61,<0,0.6>,0.4} }  
#declare rook_outline = difference{object{rook_outline4} cylinder{<0,.2><0,1.49> 0.36} }




/* Horizontal Plane */
//plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }  
//object{rook_outline}
