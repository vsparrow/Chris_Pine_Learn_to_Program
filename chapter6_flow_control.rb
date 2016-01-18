=begin

puts 1 > 2
puts 1 < 2
puts 5 >=5
puts 5 <= 4

puts 1==1
puts 2 != 1

puts 'cat' < 'dog'
=end

=begin	
puts 'Hello, what\'s you name?'
name=gets.chomp
puts 'Hello ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
end
=end

=begin
puts 'I am a fortune-teller. Tell me your name:'
name=gets.chomp
if name!='Chris'
	puts 'I see great things for you'
else
	puts 'Your future is really.... Look at the time'
	puts 'Gotta go!'
end
=end

=begin
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Fritz. And your name is?'
name=gets.chomp
if name==name.capitalize
	puts 'Please take a seat, ' +name+ '.'
else
	puts name + '? You mean ' +name.capitalize + ', right?'
	puts 'Don\'t you know how to spell your name?'
	reply=gets.chomp
	if reply.downcase == 'yes'
		puts 'Now sit!'
	else
		puts 'Get out!'
	end
end
=end

=begin
command = ''
while command != 'bye'
	if command != ''
		puts command
	end
		command = gets.chomp
	
end
puts 'Please return'
=end

=begin
puts 'Hello what\'s your name?'
name=gets.chomp
puts 'Hello, ' +name+ '.'
if name == 'Chris'
	puts 'Wow, what a cute hombre'
else
	if nam e == 'Katy'
		puts 'Wow muchcha es fea'
	end
end 
=end

=begin
puts 'Hello what\'s your name?'
name=gets.chomp
puts 'Hello ' +name+'.'
if (name=='Chris' or name == 'Perry')
	puts 'What a nice name'
end
=end

=begin
iAmChris=true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris)
=end

#print lyrics to 99 bottles of beer on the wall
  #99 bottles of beer on the wall, 99 bottles of beer.
  #Take one down and pass it around, 98 bottles of beer on the wall.


=begin
beerCount=99
while beerCount > 0
  if beerCount != 1
    puts beerCount.to_s + ' bottles of beer on the wall, ' +beerCount.to_s + ' bottles of beer.'
  else
  	puts beerCount.to_s + ' bottle of beer on the wall, ' +beerCount.to_s + ' bottle of beer.'
  end #end if beercount!=1

  beerCount = beerCount -1
  if beerCount > 0
  	puts 'Take one down and pass it around, ' +beerCount.to_s + ' bottles of beer on the wall.'
  else #if count 0
  	puts 'Take one down and pass it around, no more bottles of beer on the wall.'
  end #end if

end #end while
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall'
=end

#Write a Deaf Grandma program.
#Whatever you say to grandma (whatever you type in), she should respond with HUH?!  SPEAK UP, SONNY!, 
#unless you shout it (type in all capitals). '
#she yells back, NO, NOT SINCE 1938! 
#To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950.
#You can't stop talking to grandma until you shout BYE.

=begin
puts 'Speak to Grandma:'
speak = ''
stopSpeaking = false
byeCount=0
while stopSpeaking != true
  speak=gets.chomp	
  
  if speak == 'BYE'
  	#stopSpeaking = true
  	byeCount = byeCount+1ar
  else
  	byeCount=0
  end #end speak == 'BYE'

  if byeCount ==3
  	stopSpeaking=true
  end

  if speak != speak.upcase
  	puts 'SPEAK UP, SONNY!'
  else
  	#puts 'NO, NOT SINCE 1938!'
  	puts 'NO, NOT SINCE ' + (rand(1930..1950)).to_s + '!'
  end #end speak != upcase


end #end while
=end

#leapyears
# Write a program which will ask for a starting year and an ending year
# puts all of the leap years between them (and including them, if they are also leap years). 
# Leap years are years divisible by four (like 1984 and 2004). 
# 	However, years divisible by 100 are not leap years (such as 1800 and 1900) 
#   	unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). 

startingYear=0
endingYear=0
yearCounter=0
puts 'Enter a starting year:'
startingYear=gets.chomp.to_i
#startingYear=startingYear.to_i
puts 'Enter a ending year:'
endingYear = gets.chomp.to_i
#endingYear=endingYear.to_i

puts 'Here are the leap years:'
yearCounter=startingYear
while (yearCounter <= endingYear)
	if (yearCounter % 400 == 0) or (yearCounter  % 4==0) and (yearCounter % 1000 != 0)
		puts yearCounter.to_s
	end

=begin

	if (yearCounter % 400) == 0
		puts yearCounter.to_s
	elsif (yearCounter % 4 == 0) and (yearCounter % 1000 != 0)
		puts yearCounter.to_s
	end
=end	
	yearCounter = yearCounter + 1

end #end while
