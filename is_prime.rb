require 'pp'
def is_prime?( number )
	check_range = check_arr( number )
  check( check_range )
end

def check_arr( number )
	first_half_check_arr = (2..number-1).to_a
	second_half_check_arr = (number+1..9).to_a
	check_arr = first_half_check_arr + second_half_check_arr
	check_arr.map { |a| number % a }
end

def check( arr )
	arr.each do |a|
		if a == 0 then
			@result = false
			break
		else
			@result = true
		end
	end
	pp @result
end

is_prime?(7)