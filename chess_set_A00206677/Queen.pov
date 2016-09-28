#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"  
  
background{White}
camera 
{
    angle 10
    location <20, 40, -70>
    look_at <0, 2, 0>
}    

light_source 
{
    <20, 20, -20> color White
}  

#declare nixieShell =   
lathe 
{
    13,
    <0.0,  0.24>,
    <0.44,   0.25>,
    <0.82,   0.28>,
    <0.89,   0.39>,
    <0.94,   0.52>,
    <0.95,   3.09>,
    <0.87,  3.27>,
    <0.74,  3.42>,
    <0.5,   3.52>,
    <0.13,  3.61>,
    <0.07,  3.68>,
    <0.06,  3.82>,
    <0,     3.89>      
    texture{Orange_Glass}
    finish 
    {
        ambient .3
        phong .75
    } 
}    
   /**
#declare nixieShell =   
lathe 
{
    13,
    <0.0,  0.77>,
    <0.22,   2.35>,
    <0.94,   0>,
    <0.28,   2.44>,
    <0.94,   0.52>,
    <0.95,   3.09>,
    <0.87,  3.27>,
    <0.74,  3.42>,
    <0.5,   3.52>,
    <0.13,  3.61>,
    <0.07,  3.68>,
    <0.06,  3.82>,
    <0,     3.89>      
    texture{Orange_Glass}
    finish 
    {
        ambient .3
        phong .75
    } 
}  **/                   

#declare nixieCentre =   
lathe 
{
    4,
    <0.0,  0.57>,
    <0.89,   0.57>,
    <0.89,   0.71>,
    <0.0,   0.71>   
    texture{Brass_Metal}
    finish 
    {
        ambient .3
        phong .75
    } 
}                                   
                     
object {nixieShell}
object {nixieCentre}