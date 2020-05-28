#Ruby provides Singleton module to make a class act as singleton.
#New method of the class is privitized and we get object of singleton class through
#instance method.
require 'singleton'
class SingletonClass
  include Singleton

  attr_accessor :name
end

a, b = SingletonClass.instance , SingletonClass.instance

a.name = "Farooq"

p "Singleton" if a == b

p b.name
