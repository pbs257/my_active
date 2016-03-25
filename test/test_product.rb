require_relative "test_helper"

class TestProducts < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    assert_equal 0, Product.count

    for i in 1..10 do
      new_product = Product.new
      new_product.name = "Product_" + i.to_s
      new_product.price = "#{i}"
      new_product.sku = i
      new_product.save
    end
    assert 10, Product.count
=begin
    products = Product.all
    previous_price = 0
    products.each do |p|
      if p.price == previous_price
        puts "error"
      end
      previous_price = p.price
    end


    assert_equal 0, Product.count

=end
  end
end


