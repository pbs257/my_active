require_relative "test_helper"
require_relative "../lib/peters_block"




class TestBlock < Minitest::Unit::TestCase
  def test_block

    peters_block {|i| puts "Test output #{i}"}
  end
end