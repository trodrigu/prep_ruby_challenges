require 'pp'

def combinations( arr1, arr2 )
	new_string_1 = arr1[0] + arr2[0]
	new_string_2 = arr1[0] + arr2[1]
	new_string_3 = arr1[1] + arr2[0]
	new_string_4 = arr1[1] + arr2[1]
	pp [new_string_1, new_string_2, new_string_3, new_string_4]
end

combinations( ['foo', 'bar'], ['baz', 'boo'] )