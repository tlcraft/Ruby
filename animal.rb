class Animal
	def initialize
		puts "Creating a new Animal"
	end

	def set_name (new_name)
		@name = new_name
	end

	def get_name
		@name
	end

	def name
		@name
	end

	def name=(new_name)
		if new_name.is_a?(Numeric)
			puts "Name can't be a number"
		else
			@name = new_name
		end
	end
end


cat = Animal.new
cat.set_name("Fred")

puts cat.get_name
puts cat.name

cat.name = 88

cat.name = "Tuffer"
puts cat.name

class Dog
	attr_reader :name, :height, :weight
	attr_writer :name, :height, :weight
	attr_accessor :date_of_birth

	def bark
		return "barking."
	end
end

rover = Dog.new
rover.name = "Rover"
rover.date_of_birth = "1/1/2005"

puts rover.name
printf "%s was born on %s \n", rover.name, rover.date_of_birth

class CockerSpaniel < Dog
	def bark
		return "barkng loudly."
	end
end

coalbe = CockerSpaniel.new
coalbe.name = "Coalbe"

printf "%s is %s \n", coalbe.name, coalbe.bark()

