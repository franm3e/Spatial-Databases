select nombre 
from distrito 
where cod_distrito = (select cod_distrito from centro where cod_centro = 'E07023');

