class Bears

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def bear_catch_fish(fish)
    @stomach << fish
end

def fish_eaten()
  return @stomach.count
end

def empty_stomach()
  @stomach.clear()
end

def river_lose_fish(name, fish1)
  @fish_population -= fish1
end

def river_population()
  return @fish_population.count
end

def bear_roar()
  return "Raaaaaaawr!"
end


end
