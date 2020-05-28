class Person
  attr_reader :name
  #Setter method implementation
  def name=(name)
    @name = "My Name is " + name.upcase
  end
end

person1 = Person.new
person1.name = 'ali'
puts person1.name
