require 'observer'

#Ruby has a default implementation of Observer pattern in Observer Module.
#Just include Observeable in concerned classes,
#and implement a method update in the class which will the obsserving the concerned
#class and will do something if anything in concerned class's instance changes.

#Observeable class
class Employee
  include Observable

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end
end

#Observer class
class HR
  def update(emp)
    puts "#{emp.name}'s salary changed to #{emp.salary}"
  end
end

emp1 = Employee.new('Farooq', 'SE L1', 30000.0)
hr = HR.new

#Here HR will be notified when anything in this particular Employee changes.
emp1.add_observer(hr)

emp1.salary=35000.0
