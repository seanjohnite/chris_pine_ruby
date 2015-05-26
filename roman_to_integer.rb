NUMERALS = {
	?M => 1000,
	?D => 500,
	?C => 100,
	?L => 50,
	?X => 10,
	?V => 5,
	?I => 1
}

def roman_to_integer roman
	total = 0
	prev_num = 1000
	(0...roman.length).each {|x|
		curr_char_code = roman[x]
		curr_num = NUMERALS[curr_char_code]
		if (prev_num < curr_num) # previous char was a subtractor, ie IX or CM
			total = total - prev_num # we added it mistakenly, take it away
			to_add = curr_num - prev_num # add larger number with subtractor
		else
			to_add = curr_num
		end
		total = total + to_add

		prev_num = curr_num
	}
	total
end

puts roman_to_integer "MCMXCIX"
