require_relative 'mathdojo'

RSpec.describe MathDojo do
	before do
		@mathdojo = MathDojo.new
	end

	it "has one instance variable answer with default value of 0" do
		expect(@mathdojo.answer).to eq(0)
	end

	describe "addition" do
		it "adds with one argument" do
			@mathdojo.add(5)
			expect(@mathdojo.answer).to eq(5)
			@mathdojo.add(10)
			expect(@mathdojo.answer).to eq(15)
		end
		it "adds with an array of numbers" do
			@mathdojo.add([5, 2])
			expect(@mathdojo.answer).to eq(7)
			@mathdojo.add([1, 2, 3])
			expect(@mathdojo.answer).to eq(13)
		end
	end

	describe "subtraction" do
		it "subtracts with one argument" do
			@mathdojo.subtract(5)
			expect(@mathdojo.answer).to eq(-5)
			@mathdojo.subtract(10)
			expect(@mathdojo.answer).to eq(-15)
		end
		it "subtracts with an array of numbers" do
			@mathdojo.subtract([5, 2])
			expect(@mathdojo.answer).to eq(-7)
			@mathdojo.subtract([1, 2, 3])
			expect(@mathdojo.answer).to eq(-13)
		end
	end

	describe "chained addition and subtraction" do
		it "adds and subtracts with one argument" do
			@mathdojo.subtract(10).add(5)
			expect(@mathdojo.answer).to eq(-5)
		end
		it "adds and subtracts with an array of numbers" do
			@mathdojo.add([1, 2, 3]).subtract([1, 2])
			expect(@mathdojo.answer).to eq(3)
			@mathdojo.answer = 0
			@mathdojo.add([1, 2, 3]).subtract(1).add(3).subtract([8, 24])
			expect(@mathdojo.answer).to eq(-24)
		end
	end
end
