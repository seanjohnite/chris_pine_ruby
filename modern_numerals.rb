NUMERALS = ["M", "D", "C", "L", "X", "V", "I"]
DENOMS = [1000, 500, 100, 50, 10, 5, 1]

def roman_numeral num
	roman_num = []

	7.times { |i| num, letters = get_roman_string num, i; roman_num.push(letters) }

	roman_num.join
end 

def get_roman_string big_num, index
	num_letters = big_num / DENOMS[index]
	new_num = big_num % DENOMS[index]
	test_ix = big_num / DENOMS[index + 1] unless index == 6
	ix_num = big_num % DENOMS[index + 1] unless index == 6
	unless num_letters == 4 || test_ix == 9
		letters = NUMERALS[index] * num_letters
	else
		if num_letters == 4
			letters = NUMERALS[index] + NUMERALS[index - 1]
		elsif test_ix == 9
			letters = NUMERALS[index + 1] + NUMERALS[index - 1]
			new_num = ix_num
		end
	end
	return new_num, letters
end

2000.times { |i| puts "#{i} = #{roman_numeral i}" }