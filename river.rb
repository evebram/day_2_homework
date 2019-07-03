class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def river_lose_fish(fish)
    #@fish.delete(fish)_at(0)
  end

  def fish_count()
    return @fish.count
  end

end
