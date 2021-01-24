"""
    # ! Familias del conjunto de Julia y Mandelbrot
    # * Visualizar diferentes familias del conjunto de Julia y Mandelbrot.
    # @author galexbh@protonmail.com
    # @version 1.0
"""

using Plots

size = 50
Plots.default(size = (2200,2200),titlefontsize = size, tickfontsize = size, legendfontsize = size, guidefontsize = size, legendtitlefontsize = size)

include("./modules/grid.jl")

# funciones de una línea para las formas biológicas y la familia de polinomios cuadráticos complejos

f₁(z,c) = sin(z) + z^2 + c

f₂(z,c) = z^z + z^6 + c

f₃(z,c) = z^z + z^5 + c

f₄(z,c) = z^5 + c

f₅(z,c) = z^3 + c

""" *
	testJM(z::Complex)
Comprobar el criterio de convergencia para los conjuntos de Julia y Mandelbrot
"""

function testJM(z::Complex)
	abs(z) < 2
end

"""
	testbiomorph(z::Complex,τ::Real)
Comprobar el criterio de convergencia para los conjuntos de Julia y Mandelbrot
"""
function testbiomorph(z::Complex,τ::Real)
	if abs(real(z)) < τ || abs(imag(z)) < τ ? true : false
end

"""
	iterate(test::Function,f::Function,z::Complex,iter::Integer)
Interar z sobre una funcion f
"""
function iterate(test::Function,f::Function,z::Complex,iter::Integer)

end

"""*
	colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer)
Retornar el número de iteraciones para un valor dado de z minetras un criterio de convergencia sea válido
"""
function colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer)

end

# multiple dispatch

function colormap(f::Function,test::Function,z::Complex,c::Complex,iter::Integer,τ::Integer)

end

# __Main__

τ = 100

grilla = grid.Grid(-2.0,3.3)

rangesMatrix = grid.makeGrid(grilla)

for rz in rangesMatrix
	for ri in rangesMatrix
		z = complex(rz,iz)
		for 1:30
			#z = f₁(z,i)
			#z = f₂(z,i)
			#z = f₃(z,i)
			#z = f₄(z,i)
			#z = f₅(z,i)
			iterate()
			if abs(z) < τ ? break
		end
		if testJM(z) == #a
			colormap()
		end
		if testJM(z) == #b
			 if testbiomorph() ? colormap()
		end
	end
end
