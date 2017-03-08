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

