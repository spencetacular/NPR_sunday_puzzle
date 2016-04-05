# Find the 5 letter word where if you take the numeric value of the last 4 letters
# then add them together, the sum will equal the numeric value of the first letter.

dictionary = ARGV.first
text = File.open(dictionary).read
alphabet = ("a".."z").to_a

def check_sums(arr, word)
	sum = arr[4] + arr[3] + arr[2] + arr [1]
	if  sum == arr[0]
		puts word
	end
end

text.each_line do |line|
	array = line.split("")
	num_value_array = []
	letter_count = 0
	array.each do |letter|
		i = 1
		letter.downcase
		alphabet.each do |letter_match|
			if letter == letter_match
				num_value_array[letter_count] = i
			end
			i +=1
		end
		letter_count +=1
	end
		check_sums(num_value_array, line)
end
