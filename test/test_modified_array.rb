require_relative "test_helper"
require_relative "../lib/modified_array"

class TestModifiedArray < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    x = ModifiedArray.new
    test_array = [1, 2, 3, 4, 5]
    x.each_odd_index test_array
    x.each_even_index [1, 2, 3,4,7,10] {|i| puts "#{i * 100}"}
    x.each_with_index_alt test_array
    m = ModifiedArray.new
    m.each_with_index_alt [1,2,3,] {|value, index| puts "index is #{index}  and value is #{value}"}
  end
end