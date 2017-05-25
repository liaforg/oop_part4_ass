class Person

attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
  end

    def greeting
      "Hi my name is #{@first_name}!"
    end

end

class Student < Person

  attr_accessor :first_name

  def learn
    puts "I get it!"
  end

end


class Instructor < Person

  attr_accessor :first_name

  def teach
    puts "Everything in Ruby is an Object."
  end

end

chris=Instructor.new('Chris')
christina=Student.new('Christina')

puts chris.greeting
puts christina.greeting
puts chris.teach
puts christina.learn
