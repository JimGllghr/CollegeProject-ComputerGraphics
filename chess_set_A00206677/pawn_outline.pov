#include "colors.inc"
#include "metals.inc"
#include "woods.inc"


camera {
//   location <3.75-8*cos(2*pi*clock), 5, 2.25-8*(sin(2*pi*clock))>  
   location<10,5,10>
   look_at <1,2,2>
}
/*light_source {< 2, 13, -10> color White
}  */

#declare pawn_body = lathe{ quadratic_spline 8,
                       <0,0>,<0.5,0>,<0.5,0.25>,<0.4,0.35>,<0.2,0.95>,
                       <0.25,1>,<0.2,1.05>,<0,1.1> 
                       }      

#declare pawn = union{
                        object{pawn_body}
                        sphere{<0,1.35,0> 0.3}
                        }


#declare pawn_cut1 = difference{object{pawn} box{<-2,-1,2>, <2,2,0>}}   
#declare pawn_cut2 = difference{object{pawn_cut1} box{<-2,-1,-2>, <2,2,-.05>}} 
#declare final_cut1 = difference{object{pawn_cut2} sphere{<0,1.35,0> 0.29}}   
#declare final_cut2 = difference{object{final_cut1} object{pawn_body scale .9} }   
#declare pawn_outline = union{object{final_cut2} }






/* Horizontal Plane */
//plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } } 
//object{pawn_outline } 
            
