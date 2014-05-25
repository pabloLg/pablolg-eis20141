require 'rspec'
require_relative '../lib/Perro.rb'

describe 'Perro' do  
	
	it 'Cuando creo un perro lo 
	creo con las caracteristicas edad peso y color' do 

		perroX = Perro.new(3,7,'Blanco')
		perroY = Perro.new(1,3,'Gris')
		perroX.edad.should == 3
		perroX.peso.should == 7
		perroX.color.should == 'Blanco'
		perroY.edad.should == 1
		perroY.peso.should == 3
		perroY.color.should == 'Gris'
	end	

	it 'Cuando se ordena por edad sin importar peso ni color' do

		perro4 = Perro.new(4,7,'Blanco')
		perro3 = Perro.new(3,7,'Blanco')
		perro2 = Perro.new(2,7,'Blanco')
		perro1 = Perro.new(1,7,'Blanco')

		jauria = [perro2, perro4, perro1, perro3]

		Perro.ordenar(jauria)
		jauria[0].should == perro1
		jauria[1].should == perro2
		jauria[2].should == perro3
		jauria[3].should == perro4

	end

	it 'Cuando se ordena, los perros se ordenan segun 
	su edad en caso de ser la misma se ordenan por el peso' do


		perro8 = Perro.new(1,3,'Blanco')
		perro7 = Perro.new(1,1,'Blanco')
		perro6 = Perro.new(1,5,'Blanco')
		perro5 = Perro.new(1,2,'Blanco')

		jauria1 = [perro5, perro6, perro7, perro8]

		Perro.ordenar(jauria1)

		jauria1[0].should == perro7
		jauria1[1].should == perro5
		jauria1[2].should == perro8
		jauria1[3].should == perro6


	end

	it 'Se ordene segun 
	colores cuando las edades y los pesos son los mismos, el orden 
	los colores es blaco =1 negro=2 marro=3 gris=4' do

		perro12 = Perro.new(1,2,'Gris')
		perro11 = Perro.new(1,2,'Negro')
		perro10 = Perro.new(1,2,'Marron')
		perro9 = Perro.new(1,2,'Blanco')

		jauria2 = [perro12, perro10, perro9, perro11]

		Perro.ordenar(jauria2)

		jauria2[0].should == perro9
		jauria2[1].should == perro11
		jauria2[2].should == perro10
		jauria2[3].should == perro12
	end

	it 'Cuando se ordena se ordena primero por edad despues 
	por peso y despues por color en caso de ser iguales edad y peso.' do

		perro18 = Perro.new(1,3,'Blanco')
		perro17 = Perro.new(1,1,'Blanco')
		perro16 = Perro.new(1,6,'Marron')
		perro15 = Perro.new(1,6,'Negro')
		perro14 = Perro.new(4,7,'Blanco')
		perro13 = Perro.new(3,7,'Blanco')

		jauriaF = [perro13, perro14, perro15, perro16,perro17,perro18]

		Perro.ordenar(jauriaF)

		jauriaF[0].should == perro17
		jauriaF[1].should == perro18
		jauriaF[2].should == perro15
		jauriaF[3].should == perro16
		jauriaF[4].should == perro13
		jauriaF[5].should == perro14

	end

end

