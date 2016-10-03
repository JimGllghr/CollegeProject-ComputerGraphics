#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
/*camera { 
   location<10,5,10>
   look_at <1,2,2>
}  */
light_source {< 2, 13, -10> color White
} 


#declare base = cone{<0,0> 0.29,<0,0.29>,0.49}
#declare middle = union{cone{<0,0.29>,0.49,<0,0.39>,0.69} }
#declare top = union{cylinder{<0,0.39>,<0,1.39>,0.69} }
#declare full_bottom = union{object{base} object{middle} object{top}} 
#declare gold_bottom = union{object{base} object{middle} object{top} texture{T_Gold_1B}} 
#declare silver_bottom = union{object{base} object{middle} object{top} texture{T_Silver_1B}} 
#declare glass_bottom = union{cone{<0,1.39>,0.75,<0,1.79>, 1.0}  texture{Glass}}
#declare glass_shaft = union{cylinder{<0,1.79>,<0,2.39> 1.0} texture{Glass}} 
#declare glass_rise = union{cone{<0,2.39>, 1.0,<0,3.89>,1.5} texture{Glass}}
#declare glass_top = union{difference{sphere{<0,3.89>,1.5} object{glass_rise}} texture{Glass}}
#declare glass_full = union{object{glass_bottom} object{glass_shaft} object{glass_rise} object{glass_top}}



#declare wire =  union{cylinder{<1.29,1.39>,<1.29,3.68>,0.03} texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }} 
#declare pawn = union{object{full_bottom} object{glass_full} object{wire}}
#declare pawn_gold = union{object{gold_bottom} object{glass_full} object{wire}}
#declare pawn_silver = union{object{silver_bottom} object{glass_full} object{wire}}

plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }  
//object{pawn}    



