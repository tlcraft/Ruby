greetings = [ "Hello", "Hola", "Konnichi wa", "Bonjour", "Ciao" ]

puts "Say hello!"

userGreeting = gets.chomp.to_s

puts case userGreeting
when "Hola"
	greetings[1] + ", como estas"
when "Konnichi wa"
	"Hajimemashite douzo yoroshiku"
when "Bonjour"
	greetings[3] + ", comment ca va?"
when "Ciao"
	greetings[4] + ", come va"
else
	greetings[0] + ", how are you?"
end
puts

greeted = false
greetings.each do |greeting|
	next unless ( greeting == userGreeting )
		puts "#{greeting}"
		greeted = true
		break
end

puts greetings[0] if (!greeted)
puts

puts "Good-bye World!"