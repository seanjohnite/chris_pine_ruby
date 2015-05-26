bye_count = 0

while true
	puts "What do you want to say to Grandma?"
	says = gets.chomp

	if says != says.upcase
		bye_count = 0
		puts "HUH?! SPEAK UP, SONNY!"
	else
		if says == "BYE"
			bye_count += 1
			if bye_count == 3
				break
			end				
		else
			bye_count = 0
		end
		year = 1930 + rand(21)
		puts "NO, NOT SINCE #{year}!"
	end
end