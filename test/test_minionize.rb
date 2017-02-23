require 'minitest/autorun'
require 'minionize'

class MinionizeTest < Minitest::Test
  def test_hi
    assert_equal "Hello world!", Minionize.hi
  end
end
