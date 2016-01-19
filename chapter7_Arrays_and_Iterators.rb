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