def guess(secret)
	isFinished = false

	guess = gets.chomp.to_i

	if guess == secret
		puts "You got it right!"
		isFinished = true
	else
		puts "Wrong answer, try agian."
	end

	return isFinished
end

SECRET_NUMBER = rand(0..10)+1

count = 1
puts "Guess the number! (1 - 10) How many guesses will it take you?"

until guess(SECRET_NUMBER) do
	count += 1
end

puts "# of tries: " + count.to_s