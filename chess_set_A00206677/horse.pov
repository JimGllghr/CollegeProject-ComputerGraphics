#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
camera { 
   location<10,2,10>
   look_at <1,2,2>
}
light_source {< 2, 13, -10> color White
} 

#declare base = cone{<1.29,0> 0.29,<1.29,0.29>,0.71}
#declare middle = union{cone{<1.29,0.29>,0.71,<1.29,0.39>,1.0} texture{T_Copper_1B}}
#declare top = union{cylinder{<1.29,0.39>,<1.29,1.49>,1.00} texture{T_Copper_1B}}
#declare glass_bottom = union{cone{<1.29,1.49>,1.00,<1.29,2.04>, 1.25}  texture{Glass}}    
#declare glass_main = union{cylinder{<1.29,2.04>,<1.29,5.64> 1.25} texture{Glass}} 
#declare glass_top = union{difference{sphere{<1.29,5.64> 1.25} object{glass_main}}  texture{Glass}}
#declare glass_full = union{object{glass_bottom} object{glass_main} object{glass_top}}  
#declare bottom_full = union{object{base} object{middle} object{top}}
#declare wire =  union{cylinder{<1.29,1.49>,<1.29,3.68>,0.03} texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }}
#declare horse = union{object{bottom_full} object{glass_full} object{wire}}


/* Horizontal Plane */
plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } } 


 object{horse}