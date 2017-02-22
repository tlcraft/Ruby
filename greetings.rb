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

greetings.each do |greeting|
if ( greeting == userGreeting )
	puts "#{greeting}"
end
end

puts "Good-bye World!"