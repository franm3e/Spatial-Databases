select cod_distrito, avg((varones/mujeres)) / (
		select avg((varones/mujeres))
		from seccion
	) as razon_sexratio
from seccion
group by cod_distrito;