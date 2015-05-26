months = {
	"jan" => 1,
	"feb" => 2,
	"mar" => 3,
	"apr" => 4,
	"may" => 5,
	"jun" => 6,
	"jul" => 7,
	"aug" => 8,
	"sep" => 9,
	"oct" => 10,
	"nov" => 11,
	"dec" => 12
}

filename = 'birthdays.txt'

read_string = File.read filename

birthday_hash = {}

read_string.each_line { |str|
	line_array = str.split(',')
	name = line_array[0]
	month_date = line_array[1]
	month_number = months[month_date[1..3].downcase]
	date = month_date[4..-1].to_i
	year = line_array[2].to_i
	birthday_hash[name] = Time.new(year, month_number, date)
}

def nice_date time
	time.strftime("%A, %B %d, %Y")
end

puts "Whose next birthday do you want to know?"
person = gets.chomp

if birthday_hash[person] == nil
	puts "Sorry, I don't know that person."
	exit
end

time = birthday_hash[person]

now = Time.now

this_year_bday = Time.new(now.year, time.month, time.day)

if this_year_bday - now > 0 # birthday hasn't happened yet
	puts "#{person}'s next birthday will be #{nice_date this_year_bday}."
else # next birthday is this year
	next_bday = Time.new(now.year + 1, time.month, time.day)
	puts "#{person}'s next birthday will be #{nice_date next_bday}."
end

















