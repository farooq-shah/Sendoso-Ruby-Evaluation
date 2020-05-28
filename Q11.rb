class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

#method combining first and last name of person
  def full_name
    "My full name is #{@first_name + " " + @last_name}"
  end
end


person = Person.new("Farooq", "Shah")
puts person.full_name
