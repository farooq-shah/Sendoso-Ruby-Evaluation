#parent class
class Person
  attr_accessor :name, :gender

  def initialize(name)
    @name = name
  end
end

#Child Classes both set the gender attribute of the parent class and print it in
#their constructor.
class Male < Person
  def initialize(name)
    super(name)
    @gender = "Male"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end
end

class Female < Person
  def initialize(name)
    super(name)
    @gender = "Female"
    puts "Hi I am #{@name} and my gender is #{@gender}"
  end
end

Male.new("Farooq")
Female.new("Maham")
