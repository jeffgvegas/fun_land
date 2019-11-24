# ruby seed program

require "faker"
 
 File.open("guest_seed.txt", "w+") do |file|
	250.times do |i|
	name = Faker::Name.name
	tokens = Random.rand(10000)
	file.write("INSERT INTO guests (name, tokens) VALUES ('#{name}',#{tokens});\n")
		end 
	end
 
File.open("rewards_seed.txt", "w+") do |file|
	75.times do |i|
	item_name = Faker::Commerce.product_name
	tokens = Random.rand(5..5000)
	file.write("INSERT INTO rewards (item_name, token_cost) VALUES ('#{item_name}',#{tokens});\n")
		end
	end

