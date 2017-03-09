puts "3 + 1 = #{3 + 1}"  #interpolation in double quotes
puts '3 + 1 = #{3 + 1}'

multiline = <<EOM
This is a very long string. 
It contains interpolation
like #{5 * 5} \n\n
EOM

puts multiline

first_name = "Derek"
last_name = "Banas"

full_name = first_name + last_name
puts full_name

middle_name = "Justin"

full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

puts full_name.include?("Justin")

puts full_name.size

puts "Vowels : " + full_name.count("aeiou").to_s
puts "Consonants : " + full_name.count("^aeiou").to_s

puts full_name.start_with?("Banas")

puts "Index : " + full_name.index("Banas").to_s



puts "a == a : " + ("a" == "a").to_s
puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s
puts first_name.equal?first_name 


puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

full_name = "      " + full_name
puts full_name

full_name = full_name.lstrip
puts full_name

full_name = full_name.rstrip
puts full_name

full_name = full_name.strip
puts full_name

puts full_name.rjust(20, '.')
puts full_name.ljust(20, '.')
puts full_name.center(20, '.')