require_relative "test_helper"

class TestOrders < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    assert_equal 0, Order.count

    555.times do |i|
      puts "Order #{i}  is going to be added to the database"
      order = Order.new
      order.customer_id = i
      order.product_id = i
      order.save
    end
    assert 555, Order.count

  end
end
