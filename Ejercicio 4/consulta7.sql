select nombre, avg(superficie) as sup_media from seccion, distrito
where seccion.cod_distrito = distrito.cod_distrito
group by distrito.nombre;