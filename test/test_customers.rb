require_relative "test_helper"

class TestCustomers < MiniTest::Unit::TestCase
  #include WithRollback

  def test_write
    #assert_equal 0, Customer.count

    first_name = ["Peter", "Kirill", "Amber", "Adam", "David", "Michael", "Gabriella", "Alexandra", "Amanda", "Walter"]
    #name = %w(Peter Kirill )
    middle_name = ["A.", "B.", "C.", "D.", "E.", "F.", "G.", "H.", "I.", "J."]
    last_name = ["Sandler", "Shakirov", "White", "Henderson", "Chu", "Wilcox", "Smith", "Finklestein", "Lenon", "Orwell"]

=begin
    for i in 0..9 do
      customers = Customer.new
      customers.name = first_name[i].to_s
      for i in 0..9 do
        customers.name += middle_name[i].to_s
      end
        for i in 0..9 do
          customers.name += last_name[i].to_s
        end
      customers.save
    end
=end
    #assert 1000, Customer.count
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
    1000.times do |i|
      puts "Customer #{i} is going to be added to the database"
      customers = Customer.new
      customers.name = "Customer #{i}"
      customers.save
    end

  end
end


