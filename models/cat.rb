class Cat
  attr_accessor :name
  attr_reader :fluff_level

  def initialize
    @fluff_level = 5
    @name = 'Kitty'
    @hungry = true
  end

  def hungry?
    @hungry
  end

  def feed
    @hungry = false
    @fluff_level += 1
    'yum!!'
  end

  def haircut
    @fluff_level -= 3

  end
end

cat = Cat.new
puts "Is the kitty hungry? #{cat.hungry?}"
puts "How fluffy is our kitty? #{cat.fluff_level}"
puts "Time to feed kitty #{cat.feed}"
puts "How fluffy is the kitty now? #{cat.fluff_level}"
puts "What is the kitty's name? #{cat.name}"
puts "Kitty wants a new name. What do you suggest?"
cat.name = gets.chomp
puts "Meow! Kitty thinks #{cat.name} is a lovely name. "
