
class A
  def test_method
    puts "it is test method"
    yield "This is a yield"
  end
end



a = A.new
a.test_method {|i| puts  "The yield says: #{i}"}


