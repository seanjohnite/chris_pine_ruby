def sort array
	if array.length == 1
		return array
	end

	first_half = array[0, array.length / 2]
	second_half = array - first_half

	sorted_first = sort first_half 
	sorted_second = sort second_half 

	i1 = 0
	i2 = 0

	sorted_array = []

	while i1 < sorted_first.length || i2 < sorted_second.length
		if sorted_first[i1] == nil
			sorted_array = sorted_array + sorted_second[i2..-1]
			break
		elsif sorted_second[i2] == nil
			sorted_array = sorted_array + sorted_first[i1..-1]
			break
		end
		if sorted_first[i1].downcase <= sorted_second[i2].downcase
			sorted_array.push(sorted_first[i1])
			i1 += 1
		else
			sorted_array.push(sorted_second[i2])
			i2 += 1
		end
	end

	sorted_array
end


print sort ["Michael", "sean", "Matthew", "george", "abby"]
puts