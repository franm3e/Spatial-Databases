select oficina.cod_oficina, oficina.nombre, centro.destino
from centro, oficina, distrito_oficina
where centro.cod_distrito = distrito_oficina.cod_distrito
and distrito_oficina.cod_oficina=oficina.cod_oficina
and centro.destino = 'Religioso';