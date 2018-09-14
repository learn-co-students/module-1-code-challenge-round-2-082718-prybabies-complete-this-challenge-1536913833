require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rooby = Viewer.new("Rooby")
sheldon = Viewer.new("Sheldon")
peanut = Viewer.new("Peanut")
disa = Viewer.new("Disa")

watership_down = Movie.new("Watership Down")
pitch_perfect = Movie.new("Pitch Perfect")
the_shining = Movie.new("The Shining")
mulholland_drive = Movie.new("Mulholland Drive")
wonder_woman = Movie.new("Wonder Woman")

queue1 = QueueItem.new(watership_down, rooby)
queue2 = QueueItem.new(the_shining, rooby)
queue3 = QueueItem.new(pitch_perfect, sheldon)
queue4 = QueueItem.new(wonder_woman, sheldon)
queue5 = QueueItem.new(mulholland_drive, sheldon)
queue6 = QueueItem.new(watership_down, peanut)
queue7 = QueueItem.new(pitch_perfect, peanut)
queue8 = QueueItem.new(watership_down, disa)
queue9 = QueueItem.new(wonder_woman, disa)
queue10 = QueueItem.new(the_shining, disa)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
