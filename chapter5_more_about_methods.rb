#pop quiz methods we've seen
#puts gets chomp to_i to_f to_s + - * /

=begin
puts 'hello '. + 'world'
puts (10*9). +9

longvariablename=3
puts longvariablename
self.puts longvariablename #not working ::  puts is a private method in Object. In Ruby you cannot have an explicit receiver to call a private method.
=end

 
# reverse, which gives a backwards version of a string: 
=begin
var1='stop'
var2='stressed'
var3='Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse	
puts var1
puts var2
puts var3

puts 'What is your full name?'
name =gets.chomp
puts 'Did you know there are ' +name.length.to_s + ' characters in your name?, ' +name + ' ?'
=end

#write a program 
#which asks for your first, middle, and last names individually, 
#and then adds those lengths together

=begin
puts 'Please enter your first name: '
first_name=gets.chomp
puts 'Please enter your middle name: '
middle_name=gets.chomp
puts 'Please enter your last name: '
last_name=gets.chomp

puts 'Did you know that your name has ' + (first_name.length+middle_name.length+last_name.length).to_s + ' characters?? '
puts 'Thanks ' +first_name + ' ' +middle_name + ' '+ last_name
=end

=begin
letters = 'aAbBcCdDeEfF'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts 'a'.capitalize
puts letters
=end

=begin
#output below centered even though its lined up like the following
lineWidth=50
puts(                                    'Old Mother Hubbard'.center(lineWidth))
puts(                   'Sat in her club downtown'.center(lineWidth))
puts(             'Eating her Curd sandwich and When Protein, by Rich Piana'.center(lineWidth))
puts(            'When along came a broSpider'.center(lineWidth))
puts(                              'Which boogied his way beside \'er'.center(lineWidth))
puts(                      'And scared her shoe sized dog away'.center(lineWidth))


lineWidth=40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

#Write an Angry Boss program. 
#It should rudely ask what you want.
#Whatever you answer, the Angry Boss should yell it back to you, and then fire you. 
#For example, if you type in I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!! 

puts 'WHADDA YA WANT???'
str=gets.chomp
puts 'WHADDA YA MEAN ' +str.upcase + ' ???? YOU\'RE FIRED!!!'
=end

# So here's something for you to do in order to play around more with center, ljust, and rjust: 
# Write a program which will display a Table of Contents so that it looks like book

=begin
lineWidth=45
puts 'Table of Contents'.center(lineWidth)
puts 'Chapter 1: Numbers'.ljust(lineWidth/2) + 'page 1'.rjust(lineWidth/2)
puts 'Chapter 2: Letters'.ljust(lineWidth/2) + 'page 72'.rjust(lineWidth/2)
puts 'Chapter 3: Variables'.ljust(lineWidth/2) + 'page 118'.rjust(lineWidth/2)

puts 5**2	#exponentional
puts 5**0.5	#sq root
puts 7/3
puts 7%3
puts 365%7

puts (5-2).abs
puts (2-5).abs
=end

=begin
puts rand
puts rand
puts rand
puts rand(100)
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)
puts rand (9999999999999999999999999999999999999999999999)
puts 'The weather man said there is a ' + (rand(101)).to_s + '% chance of rain,'
puts 'but you can never trush a weatherman.'

puts srand 1776
puts srand 1776
puts srand 1776
puts srand
puts srand
puts srand 1776
=end

puts (Math::PI)
puts (Math::E)
puts Math.cos(Math::PI/3)
puts Math.tan(Math::E**2)
puts ((1+Math.sqrt(5))/2)