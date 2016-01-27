=begin
a = Array.new + [12345]
b = String.new + 'hello'
c = Time.now

puts 'a = ' + a.to_s
puts 'b = ' + b.to_s
puts 'c = ' + c.to_s

time = Time.new
time2 = time + 60

puts time
puts time2


puts Time.mktime(2000,1,1)        # y2k
puts Time.mktime(1976,8,3,10,11)  #when Crhis born

# One billion seconds... Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn?) one billion seconds old. Then go mark your calendar. 

born = Time.mktime(1976,1,1,12,32)
#puts born
whenBillionSecondsOld= born + 1000000000
puts whenBillionSecondsOld.to_s + ' is when the billion seconds anniversery is!'
=end
#Happy Birthday! Ask what year a person was born in, then the month, then the day. 
#Figure out how old they are and give them a big SPANK! for each birthday they have had. 

puts 'Hello please enter the year you where born in: '
year=gets.chomp
puts 'Please enter the month: '
month = gets.chomp
puts 'Please enter the day now:'
day = gets.chomp

born = Time.mktime(year,month,day)
#puts born.to_s
today = Time.new

secondsLived = today - born  
#puts secondsLived
yearsLived = secondsLived / (60*60*24*365)
puts yearsLived.to_i.to_s + ' years lived! TIme to spank!'
puts 'spank!' * yearsLived
