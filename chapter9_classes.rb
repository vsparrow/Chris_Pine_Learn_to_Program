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


=begin
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
=end


=begin
colorArray  =  []
colorHash   =  {}

colorArray[0] = 'red'
colorArray[1] = 'green'
colorArray[2] = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'


colorArray.each do |color|
  puts color
end

colorHash.each do |codeType,color|
  puts codeType + ': ' + color
end


weirdHash = Hash.new
weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptinez'
weirdHash[Time.now] = 'no time like the presUnt'

weirdHash.each do |key,value| 
  puts "#{key}:#{value}"
end
puts weirdHash
=end


class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end #if
    english
  end #def
end #class


#puts 5.to_eng
#puts 58.to_eng
#puts 22.to_eng


=begin
class Die
  def initialize#(numberShowing)
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end #def roll

  def showing
    @numberShowing
  end #def showing  

  def update (input)
    if input >0 and input < 7
      @numberShowing = input
    else
      puts 'ERROR only 1 to 6 !!!'
    end
  end
end #class

dice=[Die.new,Die.new]  # make some dice
dice.each do |die|
  puts die.roll
end

puts dice[0].showing 
puts dice[1].showing
puts Die.new.showing 
dice[1]
x=Die.new
puts "Now SHowing: #{x.showing}"
x.update(5)
puts x.showing
puts x.showing
=end


class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10 # he's full
    @stuffInIntestine =  0 #he doesnt needed to go bathroom

    puts @name + ' is born'
  end #init

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end #feed

  def walk  #ie POOp
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
  end #walk

  def putToBed
    puts 'You put ' +@name + ' to bed.'

    @asleep = true

    3.times do
      if @asleep
        passageOfTime
      end

      if @asleep
        puts @name + ' snores, filling the room with smoke!.'
      end
=begin    
=end
    end  # 3 times do

    if @asleep
      @asleep = false
      puts @name + ' wakes up slooooly.'
    end

  end #putToBed



  def toss
    puts 'You toss ' +@name+ ' up into the air.'
    puts 'He giggles, which singes your eyebrows'
    passageOfTime
  end #toss

  def rock
    puts 'You rock ' +@name+ ' gently.'
    @asleep = true
    puts 'He briefly dozes off'
    passageOfTime
      if @asleep 
        @asleep = false
        puts '... but he wakes up when you stop!!'
      end
  end #rock
=begin
=end


  #******************
  private   #methods here are internal to the object.

  def hungary?
    @stuffInBelly <=2
  end # hungary

  def poopy?
    @stuffInIntestine >=8
  end # poopy

  def passageOfTime 
    if @stuffInBelly > 0 
      #move food from belly to intestine
      @stuffInBelly = @stuffInBelly -1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!!'
      end
      puts @name + ' is starving! So he eats YOU!!!!!!!'
      exit
    end # if stuff in belly

    if hungary?
       if  @asleep
        @asleep = false
        puts 'HE WAKES UP SUDDENLY!!!'
       end
       puts @name + 's stomach grumbles'
    end #if hungry

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddently!!!!'
      end
      puts @name + 'really needs to go, runs around!'      
    end #if poopy

  end # passage of time

end #class


pet = Dragon.new "FATlizrd"
pet.feed
pet.walk
#pet.toss
pet.putToBed
pet.toss
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed

