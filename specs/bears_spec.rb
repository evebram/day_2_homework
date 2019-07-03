require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bears.rb')

class BearsTest < MiniTest::Test

  def setup()
    @bears = Bears.new("Beatrice", "Grizzly")

    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("sturgeon")
    @fish3 = Fish.new("trout")


    #@fish = River.new("Yukon River", @fish)
  end

  def test_bear_name()
    assert_equal("Beatrice", @bears.name())
  end

  def test_bear_type()
    assert_equal("Grizzly", @bears.type)
  end

  def test_catch_fish_from_river()
    @bears.bear_catch_fish(@fish1)
    assert_equal(1, @bears.fish_eaten())
  end

  def test_bear_empty_stomach()
    @bears.bear_catch_fish(@fish1)
    @bears.bear_catch_fish(@fish2)
    @bears.empty_stomach()
    assert_equal(0, @bears.fish_eaten())
  end

  def test_river_lose_fish()
    @fish_population = River.new("Yukon River", @fish)
    @fish_population.river_lose_fish(@fish1)
    assert_equal(2, @bears.river_population())

    # @bears.river_lose_fish(@fish1)
    # assert_equal(2, @bears.river_population())
  end

  def test_bear_roar()
    assert_equal("Raaaaaaawr!", @bears.bear_roar())
  end

end
