select distrito.nombre, count(edificio.cod_edificio) 
from edificio, seccion, distrito
where edificio.cod_seccion = seccion.cod_seccion
and seccion.cod_distrito = distrito.cod_distrito
and edificio.tipo_edificio = 'Madera'
group by distrito.nombre;