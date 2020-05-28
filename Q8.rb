module PersonExtension
  def walk
    puts "A person is walking!"
  end
end

#parent class
#the module is included in the parent class and holds the default walk method.
class Person
  include PersonExtension
  attr_accessor :name, :gender

  def initialize(name)
    @name = name
  end

end

#Child Classes
class Male < Person
  def initialize(name)
    super(name)
    @gender = "Male"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end

  def walk
    puts "A Male is walking!"
  end
end

class Female < Person
  def initialize(name)
    super(name)
    @gender = "Female"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end

  def walk
    puts "A female is walking!"
  end
end

#Both Male and Female have overriden the walk method so their own implementation
#is called when called from their instance object.

#But if walk method is called on a Person Class object then method lookup will
#find it in the module PersonExtension
p1 = Male.new("Farooq")
p1.walk
puts ""
p2 = Female.new("Maham")
p2.walk
puts ""
p3 = Person.new("Haider")
p3.walk
