class Person
  # Default getter and setter function syntax provided by Ruby. It fetches value
  # of an attribute of a class's instance and can also update it. Basically a
  # two in one function.
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end


person = Person.new("Farooq")
puts person.name
person.name = "Haider"
puts person.name
