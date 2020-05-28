#parent class

#Contains default implementation of hair method. If this method is not found in
#child classes then by default this implementation will be called.
class Person
  attr_accessor :name, :gender

  def initialize(name)
    @name = name
  end

  def hair
    puts "I have pretty Hair"
  end
end

#Child Classes

#hair method implemented. So when we call hair method on this class's object
#ruby's method lookup will call its native hair method instead of its parent's
#version. So method lookup starts away from child class and then up its hierarchy.
class Male < Person
  def initialize(name)
    super(name)
    @gender = "Male"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end

  def hair
    puts "I have Black Hair"
  end
end

#No implementation of hair method. So when we call hair method on this class's object
#ruby's method lookup will look for it in its parent classes(hierarchy).
class Female < Person
  def initialize(name)
    super(name)
    @gender = "Female"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end
end

p1 = Male.new("Farooq")
p1.hair
puts ""
p2 = Female.new("Maham")
p2.hair
