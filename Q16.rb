class Person
  attr_reader :name
  #Setter method implementation
  def name=(name)
    @name = "My Name is " + name.upcase
  end

  def method_missing(name, *args, &block)
    puts "Hey Waqas, %s is not found in registered methods." % name # name is a symbol
  end
end

person1 = Person.new
person1.name = 'ali'
puts person1.name

#Unknown method
person1.grill
