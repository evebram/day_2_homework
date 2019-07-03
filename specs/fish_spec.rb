require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @name = Fish.new("salmon")
  end

end
