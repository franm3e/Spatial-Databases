select dis.nombre, sum(sec.mujeres) as total_mujeres_distrito
from seccion sec
inner join distrito dis on dis.cod_distrito = sec.cod_distrito
group by dis.nombre;
