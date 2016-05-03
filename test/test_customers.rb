require_relative "test_helper"

class TestCustomers < MiniTest::Unit::TestCase
  #include WithRollback

  def test_write
    #assert_equal 0, Customer.count

    first_name = ["Peter", "Kirill", "Amber", "Adam", "David", "Michael", "Gabriella", "Alexandra", "Amanda", "Walter"]
    #name = %w(Peter Kirill )
    middle_name = ["A.", "B.", "C.", "D.", "E.", "F.", "G.", "H.", "I.", "J."]
    last_name = ["Sandler", "Shakirov", "White", "Henderson", "Chu", "Wilcox", "Smith", "Finklestein", "Lenon", "Orwell"]


    1000.times do |i|
      puts "Customer #{i} is going to be added to the database"
      customers = Customer.new
      customers.name = "Customer #{i}"
      customers.save
    end



  end
end



