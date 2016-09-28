#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
camera { 
   location<15,15,15>
   look_at <0,5,0>
}
light_source {< 2, 13, -10> color White
} 


#declare light_main = union {cylinder{<1.29,0.74>, <1.29, 10.19>, 0.93}    
                            texture{Glass}} 
#declare light_glass = difference{sphere{<1.29,0.74> 0.93}
                                    object{light_main}
                            texture{Glass}} 

    
#declare light_base = cone{<1.29, 10.19>, 0.93 <1.29, 10.63>, 0.83
texture{Glass}} 

#declare copper = union {cylinder{<1.29, 10.63>,<1.29, 10.74>, 0.83 } texture{T_Copper_1B}}

#declare body = union {cylinder{<1.29,10.74>,<1.29, 13.5>,1} texture{DMFDarkOak} texture{Dark_Wood}}   
#declare upper_body = union{difference{sphere{<1.29,13.5>, 0.93} object{body}} texture{DMFDarkOak} texture{Dark_Wood}}
#declare utmost_body = union{cylinder{<1.29,13.5>,<1.29,14.5>, 0.43} texture{DMFDarkOak} texture{Dark_Wood}}
#declare full_body = union{object{body} object{copper} object{upper_body}}

#declare glass_full = union{object{light_main} object{light_glass} object{light_base} object{utmost_body}}    

#declare wire = union{cylinder{<1.29, 5>, <1.29, 10.19>, 0.03}   texture {
        pigment {color rgb <1, 1, 1>}
        finish {ambient .8 diffuse .6}
      }}

#declare bishop = union{object{full_body} object{glass_full} object{wire}}
                                                                                                   
                               



/* Horizontal Plane */
plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }        

object{bishop translate <0,.5,0>}