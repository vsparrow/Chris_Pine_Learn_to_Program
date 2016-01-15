=begin
var1 =2
var2 ='5'

#puts var1 + var2  #type error
puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your mama did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts ""
puts 20
puts 20.to_s
puts '20'

puts gets
=end

=begin
puts 'Hello there, what\'s your name?'
#name =gets.chomp
name=gets
name.chomp!
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' +name+ '. :)'
=end

# Write a program which asks for a person's first name, then middle, then last.
# Finally, it should greet the person using their full name. 
=begin
puts 'What is your first name?'
first_name=gets.chomp
puts 'What is your middle name?'
middle_name=gets.chomp
puts 'What is your last name?'
last_name=gets.chomp

if middle_name ==''
	puts 'Your name is ' + first_name + ' ' +last_name + '.'
else
	puts 'Your name is ' + first_name + ' ' +middle_name+ ' ' +last_name + '.'
end
=end

#Write a program which asks for a person's favorite number. 
#Have your program add one to the number, 
#then suggest the result as a bigger and better favorite number. 
#(Do be tactful about it, though.) 

puts 'What is your favorite number?'
fav_number=gets.chomp
fav_number=fav_number.to_i
better_number=fav_number + 1
puts 'Excellent choice, ' +fav_number.to_s+ ' is a very nice number.'
puts 'We noticed that ' +better_number.to_s+ ' has ALL the qualities of ' +fav_number.to_s+ ' but its slightly bigger (and better).'
puts 'Would you consider ' +better_number.to_s + ' to be your new favorite number?'

print 'What do you say? Yes or No? : '
answer=gets.chomp
if answer.downcase=='yes'
	puts '\nExcellent'
elsif answer.downcase=='no'
	puts 'Ah ok.'
else
	puts 'Invalid answer, oh well...'
end