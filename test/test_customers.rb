require_relative "test_helper"

class TestCustomers < MiniTest::Unit::TestCase
  #include WithRollback

  def test_write

=begin
    555.times do |i|
      puts "Customer #{i} is going to be added to the database"
      customers = Customer.new
      customers.name = "Customer #{i}"
      #customers.orders = "Order #{i}"
      customers.save
    end
=end
    customer = Customer.find 2
    customer.delete
  end

end



