# find-pi-to-nth-digit
The purpose of this project is to limit pi to the desired decimal place.

### Generating Pi
In Ruby, we can generate Pi by using the Math module.
```ruby
PI = Math::PI
```
### Methods
There are 3 main methods.

#### User Input
Gets the users input and passes it to another method to check the input.
```ruby
def prompt_user_input
    puts "Please type you desired decimal place..."
    user_input = gets.chomp

    check_input(user_input)
end
```
#### Validating input
To check if the users input is a non-integer, we use Regex to check for non-digits.
```ruby
def check_input(input)
    if input.match(/\D/) 
        puts "We only accept whole numbers."
        prompt_user_input
    else
        # if input is valid, convert to an integer
        pi_to_decimal_place(input.to_i)
    end
end
```
#### Output
Finally, we use the ``.truncate`` method to limit the decimal place of PI based on the users input.
```ruby
def pi_to_decimal_place(n)
    puts "PI to the #{n}th decimal place is...."
    puts "#{PI.truncate(n.to_i)}"
end
```
