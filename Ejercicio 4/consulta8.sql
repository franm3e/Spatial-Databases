select nombre, sum(superficie) as sup_distrito from seccion, distrito
where seccion.cod_distrito = distrito.cod_distrito
group by distrito.nombre
having count(cod_seccion)>5