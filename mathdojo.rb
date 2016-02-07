class MathDojo
	attr_accessor :answer

	def initialize
		@answer = 0
	end

	def add(number)
		if number.class == Array
			@answer += number.reduce(:+)
		else
			@answer += number
		end
		self
	end

	def subtract(number)
		if number.class == Array
			@answer -= number.reduce(:+)
		else
			@answer -= number
		end
		self
	end
end