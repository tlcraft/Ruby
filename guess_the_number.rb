def guess(secret)
	isFinished = false

	guess = gets.chomp.to_i

	if guess == secret
		puts "You got it right!"
		isFinished = true
	else
		hot_or_cold(guess, secret)
	end

	return isFinished
end

def hot_or_cold (guess, answer)
	hot_or_cold = (answer - guess).abs

	if hot_or_cold <= 5
		puts "Very hot! Almost got it!"
	elsif hot_or_cold < 15
		puts "You're warm, guess again."
	elsif hot_or_cold < 25
		puts "A little warmer, keep trying."
	else
		puts "Cold, try again."
	end
end

MAX_VALUE = 100
SECRET_NUMBER = rand(0..MAX_VALUE)+1

count = 1
puts "Guess the number! (1 - #{MAX_VALUE}) How many guesses will it take you?"

until guess(SECRET_NUMBER) do
	count += 1
end

puts "# of tries: " + count.to_s