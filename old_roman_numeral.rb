def old_roman_numeral num
	num, num_M = get_num_letters num, 1000
	num, num_D = get_num_letters num, 500
	num, num_C = get_num_letters num, 100
	num, num_L = get_num_letters num, 50
	num, num_X = get_num_letters num, 10
	num, num_V = get_num_letters num, 5
	num, num_I = get_num_letters num, 1
	"M"*num_M + "D"*num_D + "C"*num_C + "L"*num_L + "X"*num_X + "V"*num_V + "I"*num_I
end 


def get_num_letters big_num, denom
	letters = big_num / denom
	new_num = big_num % denom
	return new_num, letters
end

puts old_roman_numeral 5
puts old_roman_numeral 1304
puts old_roman_numeral 1937
puts old_roman_numeral 835