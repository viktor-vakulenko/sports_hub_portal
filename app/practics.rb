
class User
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.all
    [new('Thijs'), new('Robert'), new('Tom')]
  end
end
rupert = User.new('Rupert')

def rupert.last_name
  'Beekman'
end

class Ghost
  def reflect
    self
  end
end

g = Ghost.new


p g.reflect == g # => true

p User.all

puts rupert.last_name
puts self

[1, 2, 3,].each do |n|
  puts "Number #{n}"
end
def make_salad
  yield "lettuce"
  yield "carrots"
  yield "olive oil"
end
make_salad { |ingredient| puts "Adding #{ingredient} to salad!" }
