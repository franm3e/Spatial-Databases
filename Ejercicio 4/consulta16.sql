select *
from seccion 
where cod_distrito = (select cod_distrito from distrito where nombre = 'Este') AND superficie > 2000;