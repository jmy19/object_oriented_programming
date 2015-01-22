class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def read_instructions(instructions)
		instructions.each_char do |instruction|
			if instruction == "M" then move
			elsif instruction == "L" || instruction == "R" then turn(instruction)
			end
		end
		
	end

	def turn(turn_dir)
		case
			when @direction == "N"
				if turn_dir == "L" then @direction = "W"
				elsif turn_dir == "R" then @direction = "E"
				end
			when @direction == "E"
				if turn_dir == "L" then @direction = "N"
				elsif turn_dir == "R" then @direction = "S"
				end
			when @direction == "S"
				if turn_dir == "L" then @direction = "E"
				elsif turn_dir == "R" then @direction = "W"
				end
			when @direction == "W"
				if turn_dir == "L" then @direction = "S"
				elsif turn_dir == "R" then @direction = "N"
				end

		end
	end

	def move
		case
			when @direction == "N" then @y +=1
			when @direction == "S" then @y -=1
			when @direction == "E" then @x +=1
			when @direction == "W" then @x -=1
		end
	end

	def to_s
		"#{@x} #{@y} #{@direction}"
	end

end

def verification(instructions)
		instructions.each_char.all? { |x| x == "L" || x == "R" || x == "M"}
	end 

print "what are the dimensions of the plateau (input as: X Y)"
plateau = gets.chomp!

print "Enter the starting position and direction of the first rover (with a space between each)"
startpos1 = gets.chomp
rover1 = Rover.new(startpos1[0].to_i, startpos1[2].to_i, startpos1[4].upcase)
print "Enter the instructions for the first rover (no spaces)"
while instructions1 = (gets.chomp).upcase
	if verification(instructions1)
		break
	else puts "invalid command"
	end
end
rover1.read_instructions(instructions1)

print "Enter the starting position and direction of the second rover (with a space between each)"
startpos2 = gets.chomp
rover2 = Rover.new(startpos2[0].to_i, startpos2[2].to_i, startpos2[4].upcase)
print "Enter the instructions for the second rover (no spaces)"
rover2.read_instructions(gets.chomp.upcase)

puts rover1
puts rover2
