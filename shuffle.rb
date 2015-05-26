def shuffle array
	(10 * array.length).times {
		first = rand(array.length)
		second = rand(array.length)
		while first == second
			first = rand(array.length)
			second = rand(array.length)
		end
		holder = array[first]
		array[first] = array[second]
		array[second] = holder
	}
	array
end

print shuffle [1,2,3,4,5,6,7,8,9,0,10,11,23,23,1,2,23,4,5,6,7,3]
puts