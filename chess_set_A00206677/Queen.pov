#include "colors.inc"
#include "metals.inc"
#include "woods.inc"  
#include  "textures.inc"  
  
background{White}    /**
camera 
{
    angle 10
    location <40, 20, 0>
    look_at <0, 2, 0>
}    

light_source 
{
    <20, 20, -20> color White
}                       **/

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
    texture{Glass}
    finish 
    {
        ambient .3
        phong .75
    } 
}          

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
     

  
#declare queenBody =   
lathe 
{
    27,               
    <0.1,  0.67>,      
    <0.03,  0.67>,      
    <0.03,  0.8>,  
    <0.64,   0.8>,  
    <0.64,   1.1>,
    <0.58,   1.1>, 
    <0.24,   2.22>,   
    <0.39,   2.23>, 
    <0.39,  2.38>, 
    <0.3,  2.38>,  
    <0.43,  2.68>, 
    <0.14,  2.7>,  
    <0.14,  2.95>, 
    <0,  2.95>,
    <0,  2.9>,
    <0.09,  2.9>,  
    <0.09,  2.64>,
    <0.37,  2.64>,    
    <0.23,  2.34>,
    <0.35,  2.34>, 
    <0.35,  2.27>,
    <0.19,  2.27>,
    <0.19,  2.17>,
    <0.54,  1.05>,
    <0.59,  1.05>,
    <0.58,  0.84>,
    <0.00,  0.84>
    texture{Gold_Metal} 
    //scale <1.1,1.1, 1.1>
    finish 
    {
        ambient .3
        phong .75
    } 
}           
   
  
#declare prong =     
cylinder { <0.72,0.56,0>,<0.72,0,0>, 0.04 

           //scale <1,1,1>
         } 
    

#declare filiment =          
difference
{    
    object {queenBody}
    box 
    { 
        <0.05, -10, -1.00>,< 10, 10, 1.00>   
    } 
              
    box 
    { 
        <-0.05, -10, -1.00>,< -10, 10, 1.00>   
    }      
}
   
#declare queen =       
union{         
object {nixieShell}
object {nixieCentre}               
object {prong translate <0.,0.1,0>}   
object {prong translate <-0.19,0.1,-0.49>}   
object {prong translate <-0.71,0.1,0.71>}     
object {prong translate <-1.18,0.1, -0.54>}   
object {prong translate <-0.125,0.1,0.47>}   
object {prong translate <-0.71,0.1,-0.71>}    
object {prong translate <-1.4,0.1,0>}      
object {filiment}               
                   
                   }
