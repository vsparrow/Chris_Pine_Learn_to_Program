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


#*************************************************************************