require_relative "test_helper"

class TestProducts < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    assert_equal 0, Product.count

      555.times do |p|
      puts "Adding product #{p} to the database."
      new_product = Product.new
      new_product.name = "Product_#{p}"
      new_product.price = "$#{p}"
      new_product.sku = p
      new_product.save
    end
    assert 555, Product.count
  end
end

