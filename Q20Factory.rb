#Factory Class: Creator
class PondFactory
  def initialize(number_animals)
    @animals = number_animals.times.inject([]) do |animals, i|
      animals << new_animal("Animal#{i}")
    end
  end

  def simulate_one_day
    @animals.each do |animal|
      animal.speak
      animal.eat
      animal.sleep
    end
  end
end

#Concrete Product Class
class Frog
  def initialize(name)
    @name = name
  end
  def speak
    puts "#{@name} says: Ribbit"
  end
  def eat
    puts "#{@name} eats: flies"
  end
  def sleep
    puts "#{@name} is sleeping"
  end
end

#Concrete Product Class
class Duck
  def initialize(name)
    @name = name
  end
  def speak
    puts "#{@name} says: Quack Quack"
  end
  def eat
    puts "#{@name} eats: anything"
  end
  def sleep
    puts "#{@name} is sleeping"
  end
end

#Concrete Creator Class
class FrogPond < PondFactory
  def new_animal(name)
    Frog.new(name)
  end
end
#Concrete Creator Class
class DuckPond < PondFactory
  def new_animal(name)
    Duck.new(name)
  end
end


pond = FrogPond.new(1)
pond.simulate_one_day
pond = DuckPond.new(2)
pond.simulate_one_day
