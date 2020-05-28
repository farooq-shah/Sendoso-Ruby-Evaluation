class Person
  attr_reader :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end

  def older?(person)
    @age < person.age ? "No #{@name} is not older than #{person.name}" : "Yes #{@name} is older than #{person.name}"
  end

end


person1 = Person.new("Farooq", 22)
person2 = Person.new("Maham", 23)
puts person1.older?(person2)
puts person2.older?(person1)
