class Person
  # Default getter function syntax provided by Ruby. It fetches value of an
  # attribute of a class's instance.
  attr_reader :name

  def initialize(name)
    @name = name
  end
end


person = Person.new("Farooq")
puts person.name()
