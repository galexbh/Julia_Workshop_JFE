module grid
export Grid, makeGrid

	"""*
	 Representa un objeto grilla
	"""

	struct Grid{T<:Real}
		abcisas::T
		ordenadas::T
	end

	"""
		makeGrid(g::Grid)
	Crear una matriz de rangos [rango_abcisas,rango_ordenadas]
	"""
	function makeGrid(g::Grid)
		CreakingMatrix = [g.abcisas, g.ordenadas]
	end

end
