require_relative "test_helper"

class TestUsers < MiniTest::Unit::TestCase
  include WithRollback
  include Zoral

  def test_main
    puts 'p'
    p User.all
    refute_nil User.all

  end

  def test_write
    assert_equal 0, User.count
    temporarily do
      new_user = User.new
      new_user.firstname = "Joe"
      new_user.lastname = "Walker"
      new_user.save
      assert 1, User.count
    end
    assert_equal 0, User.count
  end


end