require 'minitest/autorun'
require_relative "test_helper"
require_relative "../app_lib"

class TestUsers < MiniTest::Unit::TestCase
  def test_main
    puts 'p'
    p User.all

  end

  def test_write
    new_user = User.new
    new_user.name = "Joe"
    new_user.id = "4"
    new_user.save
    p new_user
    p User.all
  end

  def test_read
    user = User.find "3"
    p user
    assert_equal "Joe", user.name
    assert_equal 3, user.id
    assert_instance_of User, user
  end

  def test_update
    user = User.find "3"
    user.name = "Joseph"
    user.save
    p user
    assert_equal "Joseph", user.name
  end

  def test_delete
    user = User.find "4"
    user.destroy
    user.save
    user = User.find "4"
    assert_equal nil, user.name
  end
  def test_change_user
    user = ChangeUser.all
    assert_instance_of ChangeUser, #need to be able to point to the schema. How do I do this?
  end

end