class Person
  #All ruby attributes are by default in private scope and methods are in public
  #scope. So setter getter are needed for to access attributes.

  #provides public functions to fetch values of concerned attributes.
  attr_accessor :name
  attr_reader :type, :age

  def initialize(name, age)
    @name = name
    @age = age
    #private function called
    @type = calculate_type
  end

  def call_protected_function(person)
    #protected function called
    person.random
  end

  #Anything below this keyword will be treated as exclusive to this class only.
  private

  #private function can be called only in one of this class's methods.
  def calculate_type
    case @age
    when 0..12 then "Child"
    when 13..19 then "Teenager"
    else "Adult"
    end
  end

  protected
  def random
    puts "This is a protected Method of #{@name}. Can only be called from inside an object
      belonging to Person class family."
  end
end


person = Person.new("Farooq", 13)

#public methods called in the interpolated string.
puts "Hi I am #{person.name} and my age is #{person.age}"

#Calling a public method which in turn calls a protected method of another instance
#of the same class family.
puts person.call_protected_function(Person.new("Haider", 30))

#This function call will give error because i am calling a protected function
#it from outside of class family
puts person.random
