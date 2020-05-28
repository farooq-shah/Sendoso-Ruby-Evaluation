class Person
  #Previous Code:
  #attr_accessor :phone_number

  #Modification
  attr_writer :phone_number

  def initialize(number)
    @phone_number = number
  end
end

# After Modification
person1 = Person.new(3248440261)
person1.phone_number = 9987654321
puts person1.phone_number #OUTPUT NoMethodError
