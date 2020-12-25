select dis.nombre, count(cod_seccion) as num_secciones, avg(superficie) as superf_media
from seccion sec
inner join distrito dis on sec.cod_distrito = dis.cod_distrito
group by dis.nombre
having count(sec.cod_seccion) < 5;

