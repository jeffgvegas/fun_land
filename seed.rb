# ruby seed program

require "faker"
 
File.open("guest_seed.txt", "w+") do |file|
	250.times do |i|
	name = Faker::Name.name
	tokens = Random.rand(10000)
	file.write("INSERT INTO guests (name, tokens) VALUES ('#{name}',#{tokens});\n")

	end 
end
 
