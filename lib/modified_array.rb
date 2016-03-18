class ModifiedArray
  def each_odd_index array
    p array.select {|i| array.index(i) % 2 != 0}
  end
  def each_even_index array

    for i in 0..array.size - 1 do

      if i % 2 == 0
        yield array[i]
      end
    end
  end
  def each_with_index_alt array
    for i in 0..array.size - 1 do
      #puts "Index: #{i}; Value: #{array[i]}"

      value, index = array[i],i
      yield value, index
    end
  end
end



