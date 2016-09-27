#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
camera { 
   location<10,5,10>
   look_at <1,2,2>
}
light_source {< 2, 13, -10> color White
} 

#declare base = cone{<1.29,0> 0.29,<1.29,0.29>,0.49}
#declare middle = union{cone{<1.29,0.29>,0.49,<1.29,0.39>,0.69} texture{T_Copper_1B}}
#declare top = union{cylinder{<1.29,0.39>,<1.29,1.39>,0.69} texture{T_Copper_1B}} 
#declare glass_bottom = union{cone{<1.29,1.39>,0.69,<1.29,1.68>,0.89} texture{Glass}}  
#declare glass_centre = union{cone{<1.29,1.68>,0.89,<1.29,4.68>,1.58} texture{Glass}}
#declare glass_top = union{difference{sphere{<1.29,4.68>,1.58} object{glass_centre}} texture{Glass}} 
#declare glass_true_centre = union{difference{object{glass_centre} object{glass_top}} texture{Glass}}
#declare glass_point = union{difference{cone{<1.29,6.16>,0.3, <1.29,6.36>,0.00} object{glass_top}} texture{Glass}} 
#declare wire =  union{cylinder{<1.29,1.39>,<1.29,3.68>,0.03} texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }}

#declare full_glass = union {object{glass_bottom} object{glass_true_centre} object{glass_top} object{glass_point}}     
#declare full_base = union {object{base} object{middle} object{top}}
##declare rook = union{object{full_glass} object{full_base} object{wire}}                                                                        
                                                                        


/* Horizontal Plane */
plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }  
object{rook}   
