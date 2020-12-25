select ((t0_4+t5_10+t11_14) / (varones+mujeres)) / (select avg((t0_4+t5_10+t11_14) / (varones+mujeres)) from seccion) as razon_tasa_juventud 
from seccion