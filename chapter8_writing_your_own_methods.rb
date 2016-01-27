=begin
puts 'Hello and thank you for talking the time to'
puts 'help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about mexican food'
puts 'and try to answer every question honestly'
puts 'either with a "yes" or "no". my experiment'
puts 'has nothin to do with bed-wetting'
puts

# We ask these questions but we ignore their answers

goodAnswer=false
while (not goodAnswer)
	puts 'Do you like eating tacos?'
	answer=gets.chomp.downcase
	if answer == 'yes' or answer == 'no'
		goodAnswer = true
	else
		puts 'Please answer "yes" or "no".'
	end #if

end #while


goodAnswer = false
while (not goodAnswer)
	puts 'Do you like eating burritos?'
	answer=gets.chomp.downcase
	if answer == 'yes' or answer == 'no'
		goodAnswer = true
	else
		puts 'Please asnwer "yes" or "no".'
	end #if
end #while

# We pay attention to *this* asnwer, though.
goodAnswer = false
while not goodAnswer
	puts 'Do you wet the bed?'
	answer = gets.chomp.downcase
	if answer == 'yes' or answer == 'no'
		goodAnswer = true
		if answer == 'yes'
			wetsBed = true
		else
			wetsBed = false
		end # answer =yes
	else
		puts 'Please enter "yes" or "no".'
	end #if yes or no
end # while


goodAnswer = false
while not goodAnswer
	puts 'Do you like eating chimichangas?'
	answer = gets.chomp.downcase
	puts answer
	if answer == 'yes' or answer == 'no'
		goodAnswer = true
	else
		puts 'Please enter "yes" or "no".'
	end #end if
	#puts goodAnswer
	#break
end # while


puts 'Just a few more questions....'


#=begin
goodAnswer = false
while not goodAnswer
	puts 'Do you like eating sopapillas?'
	answer = gets.chomp.downcase
	if answer == 'yes' or answer == 'no'
		goodAnswer = true
	else
		puts ' Please enter "yes" or "no".'
	end #if 
end # while
#=end

# Ask lots of other questiosn about Mexican food.
#=begin
puts 
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help with'
puts 'this experiment.  In fact, this experiment'
puts 'has nothing to do with Mexican food.  It is'
puts 'an experiment about bed-wetting.  The Mexican'
puts 'food was just there to catch you off guard'
puts 'in the hopes that you would answer more'
puts 'honestly.  Thanks again.'
puts
puts wetsBed
#=end
=end

#*********************
=begin
def sayMoo
	puts "moooooooooo...."
end

sayMoo
sayMoo
puts 'coin-coin'
sayMoo
sayMoo
=end

=begin
#*******************
def sayMoo numberOfMoos=1
  puts 'mooooooooo.....' * numberOfMoos
  'yellow submarine'
end

sayMoo 3
puts 'coin-coin'
sayMoo  #should error since no parameter

#********************
def doubleThis num 
  numTimes2 = num * 2
  puts num.to_s + ' doubled is ' +numTimes2.to_s
end

doubleThis 44
#puts numTimes2.to_s  cannot access variables inside method

#************************


def littlePest var 
  var = nil
  puts 'HAHA! I runed your variable!'
end

var = 'You can\'t even touch my variable'
littlePest var
puts var 


#***********************

returnVal = puts 'This puts returned'
puts 'before puts returnVal'
puts returnVal

#*******************************

puts
x = sayMoo  2
puts  x

=end


#***********************************************
#**********************************************

=begin


def ask question
  goodAnswer = false
  while not goodAnswer
    puts question
    reply = gets.chomp.downcase

    if reply == 'yes' or reply == 'no'
      goodAnswer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end #if inner
    else
      puts 'Please enter "yes" or "no".'      
    end #end if  outer
  end #while
  answer # This is what we return (true or false).
end #define

puts 'Hello and tahnk you for ....'
puts

ask 'Do you like tacos?'            # We ignore return value
ask 'Do you like burritos?'
wetsBed = ask 'Do you wet the bed?' # We save this return
 
ask 'Do you like chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions'
ask 'Do yoiu like drinking horchata?'
ask 'Do you like eating flautas?'

puts 'DEBRIEFING:'
puts 'Thank you for ...'
puts
puts wetsBed

=end
#*************************************************************************
=begin
def englishNumber number # we only want 0-100
	if number < 0
		return 'Please enter a number 0 or greater'
	elsif number > 100
		return 'Please enter a number 100 or lesser'
	end # value check

	numString = ''
	# left is how much of the number is left to write
	# write is part of what we are writing right now
	left = number 
	write = left / 100 #how many hundreds left to write out?
	left = left - write * 10
	
	if write > 0 #1st
		return 'One Hundred'
	end #if write > 0 1st

	write = left / 10
	left = left - write * 10
	#puts 'write is ' + write.to_s + ' and left is ' + left.to_s

	if write > 0 #2nd
		if write == 1
			if left == 0
				numString = numString + 'ten'
			elsif left == 1
				numString = numString +  'eleven'
			elsif left == 2
				numString = numString +  'twelve'
			elsif left == 3
				numString = numString +  'thirteen'
			elsif left == 4
				numString = numString +  'fourteen'
			elsif left == 5
				numString = numString +  'fifteen'
			elsif left == 6
				numString = numString +  'sixteen'
			elsif left == 7
				numString = numString +  'seventeen'
			elsif left == 8
				numString = numString +  'eighteen'
			elsif left == 9
				numString = numString +  'nineteen'
			end #ones place digits
			left = 0 #we took care of digits in one place above so nothing to write
		elsif write == 2
			numString = numString + 'twenty'
		elsif write == 3
			numString = numString + 'thirty'
		elsif write == 4
			numString = numString + 'fourty'
		elsif write == 5
			numString = numString + 'fifty'
		elsif write == 6
			numString = numString + 'sixty'
		elsif write == 7
			numString = numString + 'seventy'
		elsif write == 8
			numString = numString + 'eighty'
		elsif write == 9
			numString = numString + 'ninety'
		end # if write == 1
	
		if left > 0 # aa
			numString = numString + '-'
		end # write > 0 aa

	end #if write > 0 2nd


	write = left
	left = 0

	if write > 0 # third
		if write == 1 #bb
			numString = numString + 'one'
		elsif write == 2
			numString = numString + 'two'
		elsif write == 3
			numString = numString + 'three'
		elsif write == 4
			numString = numString + 'four'
		elsif write == 5
			numString = numString + 'five'
		elsif write == 6
			numString = numString + 'six'
		elsif  write ==7
			numString = numString + 'seven'
		elsif write == 8
			numString = numString + 'eight'
		elsif write == 9
			numString = numString + 'nine'
		end #write == 1 bb
	end # if write > 0 third 

	if numString == '' # there was nothing there
		return 'zero'
	end 
	numString  #here we return numString
end #def


puts englishNumber(  0)
puts englishNumber(  2)

puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)

=end

#********************************************************
#refactor num to alpha

def englishNumber number 
	if number < 0
		return 'Please enter a non-negative number'
	end
	if number == 0
		return 'zero'
	end
	# no more special cases


	numString = ''
	onesPlace = ['one','two','three','four','five','six','seven','eight','nine']
	tensPlace = ['ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
	teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

	# left is how much of the number if left to write
	# write is 	the part we are working on 

	left = number
	write = left / 100 # how many hundreds to write
	left = left - write * 100 # subtract hundreds

	if write > 0 # 1st
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'
		
		if left > 0
			numString = numString + ' '
		end # if left > 0	
	end #if write > 0 #1st


	write = left / 10 # how many tens?
	left = left - write * 10

	if write > 0 # two
		if write == 1 and left > 0
			numString = numString + teenagers[left-1]
			left = 0
		else
			numString = numString + tensPlace[write-1]
		end # if wtite == 1 and left > 0

		if left > 0
			numString = numString + '-'
		end
	end # if write > 0 two

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end

	numString # return
end # def



puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)