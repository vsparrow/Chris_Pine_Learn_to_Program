=begin
toast = Proc.new do 
  puts 'Cheers!'
end


#toast.call
#toast.call
#toast.call


doYouLike = Proc.new do |someThing|
  puts 'I *really* like ' + someThing
end

#doYouLike.call 'chocolate'
#doYouLike.call 'ruby'


def doSelfImportantly someProc
  puts 'EVERYBODY just HOLD ON! I ahv something to do .....'
  someProc.call
  puts 'OK everyone, I\'m done. Go on with what you were doing.'
end #def

sayHello = Proc.new do
  puts 'Hello'
end

sayGoodbye = Proc.new do
  puts 'Goodbye'
end


  #doSelfImportantly sayHello
  #doSelfImportantly sayGoodbye

def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end


wink=Proc.new do
  puts '<wink>'
end

glance = Proc.new do 
  puts '<glance>'
end

#maybeDo wink
#maybeDo glance

#twiceDo wink
#twiceDo glance

def doUntilFalse firstInput, someProc
  input   = firstInput
  output  = firstInput

  while output
    input=output
    output = someProc.call input
  end #loop

  input #return
end #define

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <=0
    false
  else
    array.pop                           # take off last number
    array.push lastNumber * lastNumber  # replace it with it's square
    array.push lastNumber-1             # followed by the next smaller number
  end
end #buildArrayOfSquares

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

#puts doUntilFalse([5],buildArrayOfSquares).inspect
#puts doUntilFalse('I\'m writing this at 2am! Someone hand me a redbull!', alwaysFalse)

require 'date'
today = Date.today
#puts today.to_s #+ '?'
#puts today.inspect


def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x 
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

#puts doubleThenSquare.call(5)
#puts squareThenDouble.call(5)




class Array
  def eachEven(&wasABlock_nowAProc)
    isEven = true #true because array starts with 0
    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object  
      end # if

      isEven = (not isEven) # toggle from even to odd
    end #do
  end #def
end #class Array


['apple','bad apple','cherry','durian'].eachEven do |fruit|
  puts fruit.to_s #puts 'Yum! I just love ' #+ fruit +' pies, don\'t you?'
end #do 

[1,2,3,4,5].eachEven do |oddBall|
  puts oddBall.to_s + ' is NOT an EVEN number!!'
end




def profile descriptionOfBlock, &block
  startTime = Time.now 
  block.call
  duration = Time.now - startTime
  puts descriptionOfBlock + ': ' + duration.to_s + ' seconds'
end #def

profile '25000 doublings' do 
  number =1

  25000.times do 
    number = number + number 
  end #do
  puts number.to_s.length.to_s + ' digits'
end #profile 25000

profile 'count to a million' do 
  number = 0

  1000000.times do 
    number = number + 1
  end #do
end #profile
=end

# Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today.
# That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock.
# Test your method out with a few different blocks (including the one I just gave you). 
# Hint: You can use Time.now.hour to get the current hour.
#    However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12). 




def grandFatherClock &block
  time = Time.now
  currentHour=time.hour
  #puts currentHour
  #puts time.inspect

  if currentHour > 12
    currentHour = currentHour -12
  end
  #puts currentHour
  if currentHour ==0
    timesToRun = 12
  else
    timesToRun = currentHour
  end

  timesToRun.times  do 
    block.call 
  end
  #puts timesToRun

end #GrandFatherClock

#grandFatherClock



#grandFatherClock do 
#  puts 'DONG!'
#end

#grandFatherClock do 
#  puts rand(53)
#end

=begin
programLogger='
Program Logger. Write a method called log, 
which takes a string description of a block and, of course, a block. Similar to doSelfImportantly, 
it should puts a string telling that it has started the block, 
    and another string at the end telling you that it has finished the block, 
        and also telling you what the block returned. Test your method by sending it a code block. 
Inside the block, 
    put another call to log, passing another block to it. (This is called nesting. '
# works now

def log descriptionOfBlock, &block
  puts 'block ' +descriptionOfBlock +' started.'
  returnOfBlock =block.call
  puts 'block ' +descriptionOfBlock +' completed. It returned :' + returnOfBlock.to_s
end # log


#log grandFatherClock 'dongs each hour' &grandFatherClock

#log 'Gets time' do 
#  time = Time.now
#  time.hour.to_s + ':' +time.min.to_s 
#end

log 'outter block' do 
  
  log 'inner block1' do
    string1='COOL inner block 1 man'
  end

  log 'inner block2' do 
    string2='DUDE I havent seen \'Dude where\'s my car?\''
  end
false
end

=end

=begin
def log block_description, &block
  puts 'Beginning "'+block_description+'" . . .'
  value_returned = block.call
  puts '. . . "'+block_description+'" finished, returning:'
  puts value_returned
end

log 'outer block' do

  log 'some little block' do
    5
  end

  log 'yet another block' do
    'I like Thai food!'
  end

  false
end #block
# http://learntoprogramanswers.blogspot.com/
# only one to stump me, because question didnt mention which block, and said nesting so I was wondering if the 2ndinner block is netested inside 1st inner block
# how would the return of 1snt inner come before 2ns inner.
# 
=end




Better_Logger= 'The output from that last logger was kind of hard to read
                keep track of how deeply nested you are every time the logger wants to write something. 
                 use a global variable, a variable you can see from anywhere in your code. just precede your variable name with $, like $global
                 In the end, your logger should output code like this: 

Beginning "outer block"...
  Beginning "some little block"...
    Beginning "teeny-tiny block"...
    ..."teeny-tiny block" finished, returning:  lots of love
  ..."some little block" finished, returning:  42
  Beginning "yet another block"...
  ..."yet another block" finished, returning:  I love Indian food!
..."outer block" finished, returning:  true'

$nestLevel =0

def betterLogger block_description, &block
  #puts 'Beginning "' + block_description +'" ...'
  toPrint='Beginning "' + block_description +'"...'
  puts (' ' * $nestLevel) + toPrint
  $nestLevel = $nestLevel + 2

  returnValue=block.call

  $nestLevel = $nestLevel -2
  puts (' '* $nestLevel) + '..."' +block_description+'" finished, returning: ' + returnValue.to_s
end # better logger


betterLogger 'outer block' do 
  betterLogger 'some little block' do 
    betterLogger 'teeny-tiny block' do 
      'lots of love'
    end

    42
  end

  betterLogger 'yet another block' do 
    'I love Indian food'
  end
  true
end


