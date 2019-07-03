require('minitest/autorun')
require('minitest/rg')

require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Yukon River")

    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("sturgeon")
    @fish3 = Fish.new("trout")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_lose_fish
    @river.river_lose_fish(@fish1)
    assert_equal(2, @river.fish_count())
  end

end
