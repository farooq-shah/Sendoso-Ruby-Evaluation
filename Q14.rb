class Person
  #Flawed Code
  #attr_reader :name

  def initialize(name)
    @name = name
  end

  #Modification
  def name
    @name.dup
  end
end

person1 = Person.new('James')
puts person1.name.reverse!
puts person1.name
