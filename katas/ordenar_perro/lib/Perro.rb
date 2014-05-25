class Perro
@edad
@peso
@color
@orden_color
attr_reader :edad , :peso ,:color
attr_accessor :edad, :peso, :color,:orden_color



	def initialize(edad,peso,color)
		@edad = edad
		@peso = peso
		@color = color

		o_color = 1 if color == 'Blanco'
		o_color = 2 if color == 'Negro'
		o_color = 3 if color == 'Marron'
		o_color = 4 if color == 'Gris'

		@orden_color = o_color
		
	end

	def self.ordenar(jauria)
		jauria.sort! {|a,b|
			[a.edad,a.peso,a.orden_color] <=> [b.edad,b.peso,b.orden_color]}

	end


end