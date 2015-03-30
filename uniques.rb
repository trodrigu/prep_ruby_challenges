require 'set'
require 'pp'
def uniques( arr )
  set_it = arr.to_set
  arr_it = set_it.to_a
  pp arr_it
end

uniques( [1, 2, 3, 4, 4, 4, 5, 6, 6] )