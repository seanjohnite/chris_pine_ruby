line_width = 60

puts ""
puts "Table of Contents".center(line_width)
puts ""
puts "Chapter 1:".ljust(12) + "Getting Started".ljust(41) + "page".ljust(5) + "1".rjust(2)
puts "Chapter 2:".ljust(12) + "Numbers".ljust(41) + "page".ljust(5) + "9".rjust(2)
puts "Chapter 3:".ljust(12) + "Letters".ljust(41) + "page".ljust(5) + "13".rjust(2)

table_array = [[1,"Getting Started","1"],[2, "Numbers", "9"], [3, "Letters", "13"]]

puts ""
puts "Table of Contents".center(line_width)
puts ""

table_array.each do |chap|
	puts "Chapter #{chap[0]}:".ljust(12) + chap[1].ljust(41) + "page".ljust(5) + chap[2].to_s.rjust(2)
end