# return base raised to the power of the exponent without '**'
def power( base, exponent )
  total = 1
  until exponent == 0
    total *= base
    exponent -= 1
  end
  puts total
end

power( 2, 8 )
