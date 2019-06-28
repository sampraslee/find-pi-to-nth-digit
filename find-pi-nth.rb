# Storing Pi in a variable
PI = Math::PI

puts "Hello there, I can help you find the value of PI to your preferred decimal place."
puts "Please type you desired decimal place..."

decimal_place = gets.chomp.to_i

puts "PI to the #{decimal_place}th decimal place is...."
puts "#{PI.truncate(decimal_place)}"