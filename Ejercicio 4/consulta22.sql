select cod_seccion, ((t65_69 + t70_74 + t75_79 + t80_84 + t85_89 + t90_94 + t95_99 + t100) / (varones+mujeres)) as tasa_envejecimiento
from seccion
group by cod_seccion