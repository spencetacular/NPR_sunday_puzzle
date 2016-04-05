# NPR Sunday puzzle 4/03/2016
# Find all five letter words in a dictionary file

dictionary = ARGV.first
puts "Opening dictionary..."
text = File.open(dictionary).read
target = File.new("5_letter_words.txt", "w") 

text.each_line do |line|
	if line.length == 6
		print line
		target.write(line)
	end
end

target.close
