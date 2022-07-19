=begin
module Meetup 
  def ruby_meetup 
    puts "Discuss ruby modules"
  end 
end

class Meeting
  include Meetup 
end 

a = Meeting.new 
a.ruby_meetup
=end
module X 
  def greet
    puts "Hi from the module"
  end 
end 

class A 
  include X
end

class B < A 
end

obj = B.new 
obj.greet