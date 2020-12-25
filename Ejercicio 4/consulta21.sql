select distinct nombre
from distrito_oficina dis_ofi inner join oficina ofi on ofi.cod_oficina = dis_ofi.cod_oficina
where cod_distrito in (select dis.cod_distrito
from distrito dis
inner join (select cod_distrito from seccion sec inner join edificio edi on sec.cod_seccion = edi.cod_seccion where edi.tipo_edificio = 'Madera') sec
on dis.cod_distrito = sec.cod_distrito);