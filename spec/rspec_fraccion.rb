
require "rspec"
require "Fraccion"

	
describe "numerador y denominador" do
before :each do
	@racional = Fraccion.new(1,5)
end
	
	it "el numerador deberia ser 1" do
		
	@racional.numerador().should eq(1)
	
	end
	
	
	it "el denominador deberia ser 5" do
	
		@racional.denominador().should eq(5)
	
	end
end

#==============================================================================
	
describe "mostrar" do

before :each do
	@racional = Fraccion.new(1,2)
end	
	
	
	it "el numero racional mostrado de la forma a/b debe ser" do
	
		@racional.to_s() == "1/2"

	
	end
	
it "el numero racional mostrado en forma flotante debe ser" do
	
	@racional.to_f() == 0.5
	
end

end	

#==============================================================================

describe "valor absoluto" do

before :each do
	@racional1 = Fraccion.new(1,5)
	@racional2 = Fraccion.new(-2,7)
	@racional3 = Fraccion.new(3,-4)
	@racional4 = Fraccion.new(-5,-6)
end

	it "el valor absoluto para cada numero 1/5, -2/7, 3/-4, -5/-6 racional es" do
	
		@racional1.abs() == Fraccion.new(1,5)
		@racional2.abs() == Fraccion.new(2,7)
		@racional3.abs() == Fraccion.new(3,4)
		@racional4.abs() == Fraccion.new(5,6)
	
	end

end

#==============================================================================

describe "fraccion racional" do

before :each do
	@racional = Fraccion.new(1,5)
end

	it "el reciproco de 1/5 debe ser" do
		@racional.reciproco() == Fraccion.new(5,1)
	end

end

#==============================================================================

describe "fraccion opuesta" do

before :each do
	@racional = Fraccion.new(3,7)
end

	it "la fraccion opuesta de 3/7 debe ser" do
		@racional.-@() == Fraccion.new(-3,7)
	end

end

#==============================================================================

describe "operaciones" do
	
	before :each do
		@numero1 = Fraccion.new(1,1)     #(1)
		@numero2 = Fraccion.new(1,5)	 #(0.2)
		@numero3 = Fraccion.new(1,5)
	end

	it "La suma debe ser (6/5 = 1.2)" do
		(@numero1 + @numero2) == Fraccion.new(6,5)
	end

	it "La resta debe ser (1-0.2 (4/5) = 0.8)" do
		(@numero1 - @numero2) == Fraccion.new(4,5)
	end

	it "La multiplicacion debe ser (1*0.2 (1/5) = 0.2)" do
		(@numero1 * @numero2) == Fraccion.new(1,5)
	end

	it "La division debe ser (1,1 / 1,5 = 5)" do 
		(@numero1 / @numero2) == Fraccion.new(5,1)

	end
	
	
	it "El resto de dos fracciones debe ser 1/1 % = 0 y 1/5 = 1" do
	
		(@numero1 % @numero2).should == "0,1"
		
	end
	
	it "Se debe de poder comprobar si una fracion es menor que otra" do
		(@numero1 < @numero2).should be_false
	end
	
	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		(@numero1 > @numero2).should be_true
	end
	
	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
		(@numero1 <= @numero2).should be_false
	end
	
	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		(@numero1 >= @numero2).should be_true
	end
	
	it "Se debe de poder comprobar si una fracion es igual a otra" do
		@numero1.==(@numero2).should be_false
	end
	
end

#==============================================================================








	
