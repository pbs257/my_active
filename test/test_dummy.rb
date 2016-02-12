
require_relative "test_helper"


class TestDummy < Minitest::Unit::TestCase
  def test_dummy
    actual = Chair.all
    assert_instance_of  Chair::ActiveRecord_Relation, actual
  end
end