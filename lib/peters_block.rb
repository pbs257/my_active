def peters_block
  array = [1, 2, 3, 4]
  for i in array do
    yield i
  end
end


