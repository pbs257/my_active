require_relative "test_helper"

class TestCustomers < MiniTest::Unit::TestCase
  #include WithRollback

  def test_write
    assert_equal 0, Customer.count

    first_name = ["Peter", "Kirill", "Amber", "Adam", "David", "Michael", "Gabriella", "Alexandra", "Amanda", "Walter"]
    middle_name = ["A.", "B.", "C.", "D.", "E.", "F.", "G.", "H.", "I.", "J."]
    last_name = ["Sandler", "Shakirov", "White", "Henderson", "Chu", "Wilcox", "Smith", "Finklestein", "Lenon", "Orwell"]

    for i in 1..10 do
      customers = Customer.new
      customers.name = first_name[i]
      for i in 1..10 do
        customers.name += middle_name[i]
      end
      customers.save
    end
    puts customers 
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


