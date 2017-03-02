def guess(secret, level)
	isFinished = false

	guess = gets.chomp.to_i

	if guess == secret
		puts "You got it right!"
		isFinished = true
	else
		hot_or_cold(guess, secret, level)
	end

	return isFinished
end

def hot_or_cold (guess, answer, level)
	hot_or_cold = (answer - guess).abs

    #TODO: consider the level chosen when describing hot and cold
    #give a hint after X amount of misses depending on how hard it is
    #what's the best way to do that? Rather than passing 'level' down so far.
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

puts "Difficulty Level? Enter in Easy (e), Medium (m), or Hard (h)."

level = gets.chomp.to_s

max_level = 500

if level == "Easy" or level == "E" or level == "e"
	max_level = 30
elsif level == "Medium" or level == "M" or level == "m"
	max_level = 100
end

SECRET_NUMBER = rand(0..max_level)+1

count = 1
puts "Guess the number! (1 - #{max_level}) How many guesses will it take you?"

until guess(SECRET_NUMBER, level) do
	count += 1
end

puts "# of tries: " + count.to_s
#TODO: Grade number of tries compared to level  count / max_level