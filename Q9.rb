class Person
  # Default getter and setter function syntax provided by Ruby. It fetches value
  # of an attribute of a class's instance and can also update it. Basically a
  # two in one function.
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Ali'
puts person1.name
