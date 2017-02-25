greetings = [ "Hello", "Hola", "Konnichi wa", "Bonjour", "Ciao" ]

puts "Say hello!"

userGreeting = gets.chomp.to_s

puts case userGreeting
when "Hola"
	"Hola, como estas"
when "Konnichi wa"
	"Hajimemashite douzo yoroshiku"
when "Bonjour"
	"Bonjour, comment ca va?"
when "Bonjourno"
	"Bonjourno, come va"
else
	"Hello, how are you?"
end
puts

greeted = false
greetings.each do |greeting|
end
	next unless ( greeting == userGreeting )
		puts "#{greeting}"
end

puts "Good-bye World!"