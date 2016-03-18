class TimesExample
  def initialize number
    @number = number
    b = number
    puts "Initialize method"
    puts "Here we have instance variable #{number}"
    puts "Now b  is #{b}"
  end
  def test_instance_variable
    puts "test_instance method"
    puts "now from instance method variable #{@number}"
    puts "b variable #{b}" if b
    puts "no b " if not b
  end
  def my_times
    y = @number
    for i in 0..@number do
      yield i
    end
  end
end

=begin
var = TimesExample.new
var.my_times {|x| puts "Output: #{x}"}

5.times do  |i|

end
=end

mt = TimesExample.new 7
#mt.test_instatnce_variable
mt.my_times {|t| puts "#{t * 4 - 25}"}