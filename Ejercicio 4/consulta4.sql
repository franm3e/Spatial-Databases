select distrito.nombre from seccion, distrito
where distrito.cod_distrito = seccion.cod_distrito
and seccion.cod_seccion = 'S01722';