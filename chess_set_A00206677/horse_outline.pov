#include "colors.inc"
#include "metals.inc"
#include "woods.inc" 

camera {
//   location <3.75-8*cos(2*pi*clock), 5, 2.25-8*(sin(2*pi*clock))>  
   location<3,3,5>
   look_at <1,2,0>
}

/*light_source {< 2, 13, -10> color White
}      */


#declare shieldBase = lathe{linear_spline 4, <0,0>,<0.5,0.5>,<0.7,0.9>,<0,0.9>} 
#declare shieldbody = cylinder{<0,0.9><0,1.4>, 0.7} 
#declare shieldTop = lathe{linear_spline 4, <0.7, 1.4>, <0.4, 1.6>, <0, 1.9>,<0,1.4>}
#declare fullShield = union{object{shieldBase} object{shieldbody} object{shieldTop} texture{T_Gold_1B}} 
#declare shieldCut1 = difference{object{fullShield} box{<.8,0,10><0.01,2,-10>}}
#declare shieldCut2 = difference{object{shieldCut1} box{<-.8,0,10><-0.01,2,-10>}} 
#declare horse_outline = difference{object{shieldCut2} object{fullShield scale .9 translate<0, .1,0>}}





 //plane
//plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } } 
//object{fullShield} 
//object{box{<.8,0,10><0.1,2,-10>}} 
//object{shieldCut1}   
//object{horse_outline}
