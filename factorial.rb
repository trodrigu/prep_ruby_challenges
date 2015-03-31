def factorial( number )
  total = 1
  until number == 0
    total *= number
    number -= 1
  end
  puts total
end

factorial(5)