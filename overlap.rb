require 'pp'
def overlap( arr1, arr2 )
  x_result = overlap_x( arr1, arr2 )
  y_result = overlap_y( arr1, arr2 )
  if x_result && y_result == true
    pp true
  else
    pp false
  end
end

def overlap_x( arr1, arr2 )
  flat_arr1 = flatten_arr( arr1 )
  flat_arr2 = flatten_arr( arr2 )
  range_arr1 = get_x_range( flat_arr1 )
  range_arr2 = get_x_range( flat_arr2 )
  compare_range( range_arr1, range_arr2 )
end

def overlap_y( arr1, arr2 )
  flat_arr1 = flatten_arr( arr1 )
  flat_arr2 = flatten_arr( arr2 )
  range_arr1 = get_y_range( flat_arr1 )
  range_arr2 = get_y_range( flat_arr2 )
  compare_range( range_arr1, range_arr2 )
end

def flatten_arr( arr )
  arr_flat = arr.flatten
end

def get_x_range( arr )
  range_start = arr[0]
  range_end = arr[2]
  (range_start..range_end).to_a
end

def get_y_range( arr )
  range_start = arr[1]
  range_end = arr[3]
  (range_start..range_end).to_a
end

def compare_range( range_arr1, range_arr2 )
  if (range_arr1 & range_arr2).size > 1
    @result = true
  else
    @result = false
  end
end

# overlap( [[0,1], [3, 3]], [[1,1], [4,5]] )
overlap( [[0,0], [1, 4]], [[1,1], [3,2]] )