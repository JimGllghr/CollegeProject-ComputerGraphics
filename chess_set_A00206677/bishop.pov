#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"
camera { 
   location<15,15,15>
   look_at <0,5,0>
}
/*light_source {< 2, 13, -10> color White
} */


#declare light_main = union {cylinder{<0,0.74>, <0, 10.19>, 0.93}    
                            texture{Glass}} 
#declare light_glass = difference{sphere{<0,0.74> 0.93}
                                    object{light_main}
                            texture{Glass}} 

    
#declare light_base = cone{<0, 10.19>, 0.93 <0, 10.63>, 0.83
texture{Glass}} 

#declare copper = union {cylinder{<0, 10.63>,<0, 10.74>, 0.83 } texture{T_Copper_1B}}

//#declare body = union {cylinder{<0,10.74>,<0, 13.5>,1} }
#declare body = lathe {linear_spline 6, <0,10.74>,<1,10.74>, <1, 13.0> ,<1.1, 13.0> ,<1.1, 13.5> ,<0,10.74>}   
#declare upper_body = union{difference{sphere{<0,13.5>, 0.93} object{body}} }
#declare utmost_body = union{cylinder{<0,13.5>,<0,14.5>, 0.43} }
#declare full_body = union{object{body} object{copper} object{upper_body}}             
#declare gold_body = union{object{body} object{copper} object{upper_body} texture{T_Gold_1B}}
#declare silver_body = union{object{body} object{copper} object{upper_body} texture{T_Silver_1B}}

#declare glass_full = union{object{light_main} object{light_glass} object{light_base} object{utmost_body}}    

#declare wire = union{cylinder{<0, 5>, <0, 10.19>, 0.03}   texture {
        pigment {color rgb <1,0,0>}
        finish {ambient 2.8 diffuse 5.6} 
      }} 
#declare wire_gold = union{cylinder{<0, 5>, <0, 10.19>, 0.03}   texture {
        pigment {color rgb <.6,.97,.92>}
        finish {ambient 2.8 diffuse 5.6} 
      }}
#declare wire_silver = union{cylinder{<0, 5>, <0, 10.19>, 0.03}   texture {
        pigment {color rgb <.607,0,.172>}
        finish {ambient 2.8 diffuse 5.6} 
      }}

#declare bishop = union{object{full_body} object{glass_full} object{wire}}    
#declare bishop_gold = union{object{gold_body} object{glass_full} object{wire_gold}}
#declare bishop_silver = union{object{silver_body} object{glass_full} object{wire_silver}}
                                                                                                   
                               



/* Horizontal Plane */
//plane{ <0,1,0>, -0.012 pigment{ rgb<0.2,0.8,0.4> } }        

