def sort array
	sorted_array = []
	

	while true
		if array.length == 0
			break
		end

		earliest_word = array[0]

		array.each do |word|
			if word < earliest_word
				earliest_word = word
			end
		end

		array = array - [earliest_word]
		sorted_array.push(earliest_word)
	end

	sorted_array
end

print sort ["Abby", "Sean", "Matthew", "George", "Michael"]
puts