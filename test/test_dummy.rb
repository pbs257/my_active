require 'minitest/autorun'
require_relative "test_helper"
require_relative "../app_lib"

class TestDummy < Minitest::Unit::TestCase
  def test_dummy
    actual = Chair.all
    assert_instance_of  Chair::ActiveRecord_Relation, actual
  end
end