class Less5
  def aad_zeros_upto_5_chrs string
    if string.length < 5
      remainder = 5 - string.length
      remainder.times do
        string = string + "0"
      end
    string
    end
  end
end

class More5
  def replace_over_5_chrs string
    if string.length > 5
      index = 0
      new_string = ''
      #surplus = string.length - 5
      string.each_byte  do |c|
        index += 1
        if index > 5
          puts 0
          new_string = new_string + '0'
        else
          puts " character = #{c.to_s} index = #{index}"
          new_string = new_string + c.to_s
        end
      end
      new_string
    end
  end
  def conv

  end
end


less5 = Less5.new
p less5.aad_zeros_upto_5_chrs "dog"
p less5.aad_zeros_upto_5_chrs "sixty"

more5 = More5.new

puts  more5.replace_over_5_chrs "baseball"


#7.7.16 ASCII to Char & Back
puts "A".ord
puts 65.chr
