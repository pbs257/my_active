require_relative "test_helper"

class TestOrders < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    assert_equal 0, Order.count

    for i in 1..10 do
      order = Order.new
      order.customer_id = i
      order.product_id = i
      order.save
    end
    assert 10, Order.count

  end
end
