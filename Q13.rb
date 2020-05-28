class Person
  attr_reader :name
  #Setter method implementation for prefixing
  def name=(name)
    @name = "Mr. " + name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
