module Foo 
  def foo 
    puts "Foo!"
  end 
end 

class Bar 
  include Foo 
end

class Gfg
  extend Foo
  # include Foo
end

b = Bar.new
b.foo

a = Gfg.foo