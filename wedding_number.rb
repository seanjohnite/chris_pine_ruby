def english_number number
	if number < 0
		return "Please enter a positive number"
	elsif number == 0
		return 'zero'
	end

	num_string = ""

	ones_place = [
		nil, 'one', 'two', 'three', 'four', 'five',
		'six', 'seven', 'eight', 'nine'
	]

	tens_place = [
		nil, 'ten', 'twenty', 'thirty', 'forty',
		'fifty', 'sixty', 'seventy', 'eighty', 'ninety'
	]

	teenagers = [
		nil, 'eleven', 'twelve', 'thirteen', 'fourteen',
		'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
	]

	big_num = [
		1_000_000_000_000, 1_000_000_000, 1_000_000, 
		1000, 100
	]

	big_num_text = [
		" trillion", " billion", " million", " thousand", " hundred"
	]

	left = number

	# Trillions through hundreds here

	big_num.length.times { |i|
		write = left / big_num[i]
		left = left - write * big_num[i]
		if write > 0
			num_string = "#{num_string}#{english_number write}#{big_num_text[i]}"
			if left > 0
				num_string += " "
			end
		end
	}

	# Tens place here

	write = left / 10
	left = left - write * 10

	if write > 0
		if write == 1 && left > 0
			num_string += teenagers[left]
			left = 0
		else
			num_string += tens_place[write]
		end

		if left > 0
			num_string += "-"
		end
	end

	write = left
	left = 0

	if write > 0
		num_string += ones_place[write]
	end
	num_string
end



puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
