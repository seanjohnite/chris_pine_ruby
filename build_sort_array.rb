built_array = []

puts "We're making an array. Enter an empty line to continue and sort."

while true
	item = gets

	if item == "\n"
		break
	else
		built_array.push(item.chomp)
	end
end

sorted = built_array.sort

puts sorted
