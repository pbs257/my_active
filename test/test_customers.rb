require_relative "test_helper"

class TestCustomers < MiniTest::Unit::TestCase
  #include WithRollback

  def test_write
    assert_equal 0, Customer.count

    for i in 1..10 do
      customers = Customer.new
      customers.name = "Customer #{i}"
      customers.save
    end
    assert 10, Customer.count
=begin
    customers = Customer.all
    previous_name = null
    customers.each do |p|
      if p.name == previous_name
        puts "error"
      end
      previous_name = p.price
    end
=end

    #assert_equal 0, Customer.count
  end
end


