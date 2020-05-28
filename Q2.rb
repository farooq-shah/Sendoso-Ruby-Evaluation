class Person
  # Default getter function syntax provided by Ruby. It fetches value of an
  # attribute of a class's instance.
  attr_reader :name

  # Default setter function syntax provided by Ruby. It updates value of an
  # attribute of a class's instance.
  attr_writer :name

  def initialize(name)
    @name = name
  end
end


person = Person.new("Farooq")
puts person.name()
person.name = "Haider"
puts person.name()
