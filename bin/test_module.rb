module ExampleModule
  def hello
    puts "Hello World"
  end

  module Inside
    class C
      def how_do
        puts "ups"
      end
    end
  end
end

class ModuleTester
  include ExampleModule
end
mod_test = ModuleTester.new
mod_test.hello
class A
  def hello
    puts "hello 2"
  end
end

class B < A
  def goodby
    puts 'goodby'
  end
end

class C < B
  include ExampleModule

  def how_do
    puts "how do you do?"
  end
end


c = C.new
c.hello
c.goodby
c.how_do
c = ExampleModule::Inside::C.new
c.how_do
=begin
Output
Hello World
=end
