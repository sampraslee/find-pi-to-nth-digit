# Storing Pi as a constant
PI = Math::PI

# Methods

# Gets the users input and passes it to another method to check the input
def prompt_user_input
    puts "Please type you desired decimal place..."
    user_input = gets.chomp

    check_input(user_input)
end
# Checks if the input has a decimal point to prevent users from using non-integers
def check_input(input)
    if (input.include? ".") 
        puts "We only accept whole numbers."
        prompt_user_input
    else
        # if input is valid, convert to an integer
        pi_to_decimal_place(input.to_i)
    end
end
# Takes the user input & using the truncate method, limit PI to the desired decimal place
def pi_to_decimal_place(n)
    puts "PI to the #{n}th decimal place is...."
    puts "#{PI.truncate(n.to_i)}"
end


# ––––––––––––––––––– Driver Code ––––––––––––––––––
puts "Hello there, I can help you find the value of PI to your preferred decimal place."
prompt_user_input