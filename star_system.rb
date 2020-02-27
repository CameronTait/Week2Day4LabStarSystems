class StarSystem
  attr_reader :name, :planets
  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map { |planet| planet.name }

end
  def get_planet_by_name(planet_name)
   @planets.find { |planet| planet.name == planet_name }

  end

  def get_largest_planet
    @planets.max_by { |planet| planet.diameter }
  end

  def get_smallest_planet
    @planets.min_by { |planet| planet.diameter }
  end



  def get_planets_with_no_moons
    @planets.select { |planet| planet.number_of_moons == 0 }
  end


  def get_planets_with_more_moons(number_of_moons)
  result = @planets.select { |planet| planet.number_of_moons > number_of_moons }
  result.map { |planet| planet.name }
  end

  def get_number_of_planets_closer_than(distance)
  result =  @planets.select { |planet| planet.distance_from_sun < distance }
  result.count
  end


  def get_total_number_of_moons
    @planets.reduce(0) { |sum, moons| sum + moons.number_of_moons }
  end


  def get_planet_names_sorted_by_increasing_distance_from_sun
  result = @planets.sort_by { |planet| planet.distance_from_sun }
  result.map { |planet| planet.name }

  end

  def get_planet_names_sorted_by_size_decreasing
  result = @planets.sort_by { |planet| planet.diameter }
  result.reverse.map { |planet| planet.name }

  end

end
