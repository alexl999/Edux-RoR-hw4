@correct = false

def greeting
	puts "What is your name"
	@name = gets.chomp
	puts "Hello #{@name} Think of a number from 1 to 10 and I will guess your number!"
end

def guessing
	@firstguess = rand(1..10)
	puts "Is your number equal to, less than, or more than #{@firstguess}"
	@userinput = gets.chomp

	while @correct == false

		if @userinput == "equal"
			@correct = true
			puts "Yes! I guessed it correct"

		elsif @userinput == "less"
			@firstguess = @firstguess - 1
			@firstguess= rand(0..@firstguess)
			puts "Is your number equal to, less than, or more than #{@firstguess}?"
		 	@userinput = gets.chomp


		elsif @userinput == "more"
			@firstguess= @firstguess +1 
			@firstguess = rand(@firstguess..10)
			puts "Is your number equal to, less than, or more than #{@firstguess}"
			@userinput = gets.chomp


		end
	end
end



greeting
guessing



