class Person
	attr_accessor :name
 	def initializer(name)
		@name = name
	end 

	def greeting
		puts "Hi my name is #{@name}"	
	end
end


class Student < Person
	def learn
		puts "I get it!"
	end
end

class Teacher < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

teacher = Teacher.new
teacher.name = "Chris"
teacher.greeting

student = Student.new
student.name = "Christina"
student.greeting

teacher.teach
student.learn
student.teach
# an error for undefined method occurs because the teach method is only defined within the Teacher class, so it is not visible to the Student class.