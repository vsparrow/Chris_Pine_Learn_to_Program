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
