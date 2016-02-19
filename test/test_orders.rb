require_relative "test_helper"

class TestOrders < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    ord_1 = Order.new
    ord_1.customer_id = 1
    ord_1.product_id = 2
    ord_2 = Order.new
    ord_2.customer_id = 2
    ord_2.product_id = 4
  end
end