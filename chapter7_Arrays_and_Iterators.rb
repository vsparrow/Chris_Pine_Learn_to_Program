=begin
[]
[5]
['hello','goodbye']
flavor='vanilla'			# this is not an array

a=[89.9,flavor,[true,false]]	#but this is

a.each {|x| puts x}

flavor='berry'
a.each {|x| puts x}
# Remember, variables aren't objects, so our last array is really pointing to float, a string, and an array. 
# Even if we were to set flavor to point to something else, that wouldn't change the array. 
# in print 2 of array it still outputs vanilla

names = ['Ada','Belle','Chris']

puts names
puts ""
puts names[0]
puts names[1]
puts names[2]
puts names[3] #out of range

puts ""
languages=['English','German','Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for C++!'
puts '...'

puts ''
3.times do 
	puts 'Hip-Hip-Horray'
end

puts ''

food=['artichoke','brioche','caramel']
puts food
puts
puts food.to_s
puts
puts food.join(', ')
puts
puts food.join('  :)  ') + '  8)'

200.times do
	puts []
end


favorites=[]
favorites.push 'raindrops on roses'
favorites.push 'whiskey is bad on kittens'
puts
puts favorites[0]
puts favorites.last
puts favorites.length
puts 
#puts 'pop'
puts 'popping now : this is the result' + favorites.pop
puts 'this is what is left in the array: ' 
puts favorites
puts favorites.length

=end

=begin
#Let's write a program which asks us to type in as many words as we want 
#(one word per line, continuing until we just press Enter on an empty line), 
# which then repeats the words back to us in alphabetical order. OK? 
#Hint: There's a lovely array method which will give you a sorted version of an array: sort. Use it! 
puts 'Please type in as many words as you like, one per line,'
puts 'Press enter on an empty line to stop'
arrayOfWords = []
input = 'empty'

while input != ''
	input = gets.chomp
	arrayOfWords.push input
end

puts 'Outputting array:'
arrayOfWords.sort!
puts arrayOfWords
=end


# Try writing the above program without using the sort method. A large part of programming is solving problems, so get all the practice you can! 
=begin
puts 'Please type in as many words as you like, one per line,'
puts 'Press enter on an empty line to stop'
arrayOfWords = []
input = 'empty'

while input != ''
	input = gets.chomp
	if input != ''
		arrayOfWords.push input
	end
end


counter = 0
while counter < arrayOfWords.length
	smallest = counter #arrayOfWords[counter]
	innerLoopCounter=counter + 1
	while innerLoopCounter < arrayOfWords.length
		if arrayOfWords[innerLoopCounter] < arrayOfWords[smallest]
			smallest=innerLoopCounter

		end #if
		innerLoopCounter = innerLoopCounter +1
	end #innerLoop
	temp=arrayOfWords[counter]
	arrayOfWords[counter]=arrayOfWords[smallest]
	arrayOfWords[smallest]=temp
	counter = counter +1
end #while


puts arrayOfWords

=end


# Rewrite your Table of Contents program (from the chapter on methods). 
# Start the program with an array holding all of the information for your Table of Contents (chapter names, page numbers, etc.). 
# Then print out the information from the array in a beautifully formatted Table of Contents. 

arrayOfTOC=[
'Chapter 1:', 'Numbers', 'page 1',
'Chapter 2:', 'Letters', 'page 72',
'Chapter 3:', 'Variables', 'page 118']
lineWidth = 40
#puts arrayOfTOC
#puts arrayOfTOC[0][0]
counter=0
while counter < arrayOfTOC.length

	if arrayOfTOC[counter][0] == 'C'
		print arrayOfTOC[counter].ljust lineWidth/3
	elsif arrayOfTOC[counter][0] == 'p'
		print arrayOfTOC[counter].rjust lineWidth/3
		puts
	else
		print arrayOfTOC[counter].ljust lineWidth/3
	end #if
	counter = counter + 1
end	#while