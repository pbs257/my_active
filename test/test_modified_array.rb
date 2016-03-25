require_relative "test_helper"
require_relative "../lib/modified_array"

=begin
class TestModifiedArray < MiniTest::Unit::TestCase
  include WithRollback

  def test_write
    x = ModifiedArray.new
    test_array = [1, 2, 3, 4, 5]
    x.each_odd_index test_array
    x.each_even_index [1, 2, 3,4,7,10] {|i| puts "#{i * 100}"}
    x.each_with_index_alt test_array
    m = ModifiedArray.new
    m.each_with_index_alt [1,2,3,] {|value, index| puts "index is #{index}  and value is #{value}"}
  end
end
=end

class ParentDemoClass
  def common_method  string
    return nil
  end
end

module DemoMod
  def common_method string
    return string + " Moduled"
  end
end

class DemoAddClass
  def common_method string
    string + " Delegated added"
  end
end

class DemoClass
  include DemoMod
  def demo_method
    puts "Demo class; demo_method"
  end
end

class DemoClass2 < ParentDemoClass
  def initialize
    @added = DemoAddClass.new
  end
  def common_method string

    @added.common_method string
    end
  def demo_method2
    puts "Dee"
  end
end

democlass = DemoClass.new
democlass.demo_method
puts democlass.common_method "Test"
democlass2 = DemoClass2.new
democlass2.demo_method2
puts  democlass2.common_method "Argument"

stringvar = "This is a very, very, very long multi-line string" +
    "\n continuing this way" \
        "and still continuing"
puts stringvar

pig = "Oink"
puts quotestring = 'string #{pig}'
puts doublequotesstring = "string #{pig}"


string_array = ["a", "b", "c"]
arr = %W(a,d,c)
p arr

var = "
dfdf
fdfd

fdf
"