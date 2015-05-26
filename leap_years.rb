
puts "Leap Year Checker!"
puts ""
puts "What's the starting year?"
start_year = gets.chomp.to_i
puts "What's the ending year?"
end_year = gets.chomp.to_i

while true
	if start_year == end_year
		break
	end

	if (start_year % 100 != 0 && start_year % 4 == 0) || start_year % 400 == 0
#1984          true	                 true						false
#1800		   false			     true                       false
#2000		   false				 true						true
		puts "#{start_year}"
	end

	start_year += 1
end 