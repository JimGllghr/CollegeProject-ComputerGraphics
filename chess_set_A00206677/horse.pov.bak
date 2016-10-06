#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"  
#include "horse_outline.pov"
camera { 
   location<10,5,10>
   look_at <1,2,2>
}
/*light_source {< 2, 13, -10> color White
}      */

#declare base = cone{<0,0> 0.29,<0,0.29>,0.71}
#declare middle = union{cone{<0,0.29>,0.71,<0,0.39>,1.0} }
#declare top = union{cylinder{<0,0.39>,<0,1.49>,1.00} }
#declare glass_bottom = union{cone{<0,1.49>,1.00,<0,2.04>, 1.25}  texture{Glass}}    
#declare glass_main = union{cylinder{<0,2.04>,<0,5.64> 1.25} texture{Glass}} 
#declare glass_top = union{difference{sphere{<0,5.64> 1.25} object{glass_main}}  texture{Glass}}
#declare glass_full = union{object{glass_bottom} object{glass_main} object{glass_top}}  
#declare bottom_full = union{object{base} object{middle} object{top}}  
#declare bottom_gold = union{object{base} object{middle} object{top} texture{T_Gold_1B}}
#declare bottom_silver = union{object{base} object{middle} object{top} texture{T_Silver_1B}}
#declare wire =  union{object{horse_outline scale 1.2 translate<0,1.49>} texture {
        pigment {color rgb <.6,.97,.92>}
        finish {ambient 1.8 diffuse .6}
      }}     
#declare wire_gold =  union{object{horse_outline scale 1.2 translate<0,1.49>} texture {
        pigment {color rgb <.6,.97,.92>}
        finish {ambient 1.8 diffuse .6}
      }}

#declare wire_silver =  union{object{horse_outline scale 1.2 translate<0,1.49>} texture {
        pigment {color rgb <.607,0,.172>}
        finish {ambient 1.8 diffuse .6}
      }}

#declare horse = union{object{bottom_full} object{glass_full} object{wire}}  
#declare horse_gold = union{object{bottom_gold} object{glass_full} object{wire_gold}}
#declare horse_silver = union{object{bottom_silver} object{glass_full} object{wire_silver}}


/* Horizontal Plane */
//plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } } 

