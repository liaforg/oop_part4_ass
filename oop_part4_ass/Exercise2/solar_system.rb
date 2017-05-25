class System

attr_reader :bodies

@@bodies = []

  def add
    new_body = System.new
    @@bodies << new_body
  end


  def total_mass
    total_mass = 0
    @@bodies.each do |total|
      total_mass += total
    end
    total_mass
  end
end

class Body

attr_reader :name, :mass

def initialize(name, mass)
  @name = name
  @mass = mass
end

end

class Planet < Body

  attr_accessor :days, :years

  def initialize(name, mass, years, days)
    @years = years
    @days = days
    super(name, mass)
  end

 def day
  puts "There are #{days} days on planet #{name}."
 end

 def year
  puts "Ther are #{days} in a year on the planet #{name}."
 end

end

earth=Planet.new("Earth", 384098401, 24, 365)

puts earth.days

class Star < Body

  attr_accessor :type

  def initialize(type, mass, name)
    @type = type
    super(name, mass)
  end

  def type
    puts "The type of star is #{type}."
  end
end

sun = Star.new("Sun", 38479871, "G-Star")

puts sun.mass

class Moon < Body

  attr_accessor :month, :planet

  def initialize(name, mass, month, planet)
    @month = month
    @planet = planet
    super(name, mass)
  end

  def moon_month
    puts "There are #{month} days in a month on the moon #{name}."
  end
end

planet = Planet.new("Pluto", 400, 3, planet)
moon = Moon.new("Blue Moon", 400, 1, planet)

death_star = Moon.new("Death Star", 842570235, 381, planet)

puts death_star.month
