class Rover
	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end
	
	def read_instructions(instructions)
		instructions.each_char do |single_instruction|
			if instruction == "M" then move
			elsif instruction == "R" || instruction == "R" then turn(instruction)
			else puts "invalid instructions"
			end
		end
		
	end
	def turn(turn_dir)
		case
			when @direction == "N"
				if turn_dir == "L" then @direction = "W"
				elsif turn_dir == "R" then @direction = "E"
				end
			when direction == "E"
				if turn_dir == "L" then @direction = "N"
				elsif turn_dir == "R" then @direction = "S"
				end
			when direction == "S"
				if turn_dir == "L" then @direction = "E"
				elsif turn_dir == "R" then @direction = "W"
				end
			when direction == "W"
				if turn_dir == "L" then @direction = "S"
				elsif turn_dir == "R" then @direction = "N"
				end
		end
	end

	def move
		case(@direction)
			when @direction == "N" then @y +=1
			when @direction == "S" then @y -=1
			when @direction == "E" then @x -=1
			when @direction == "W" then @x +=1
		end
	end

end

print "what is the plateau size?"
plateau = gets.chomp!

print "Enter the starting position and direction of the first rover (with a space between each)"
startpos = gets.chomp
rover1 = Rover.new(startpos[0].to_i, startpos[2].to_i, startpos[4].upcase)

