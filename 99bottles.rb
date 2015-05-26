bottles = 99
bottle_string = "bottles"

while bottles > 0
	puts "#{bottles} #{bottle_string} of beer on the wall!"
	puts "#{bottles} #{bottle_string} of beer!"
	bottles -= 1
	bottle_string = bottles == 1 ? "bottle" : "bottles"
	puts "Take one down, pass it around, #{bottles} #{bottle_string} of beer on the wall!"
	puts ""
end

puts "Wait.. there's no more beer : ("