def map(source_array)
  new_array = []
  x = 0
  while source_array.length > x do
    new_array.push(yield(source_array[x]))
    x += 1
  end
  new_array
end

def reduce(source_array, starting_point= nil)
  if starting_point
    result = starting_point
    x = 0
  else
    result = source_array[0]
    x = 1
  end

  while source_array.length > x
    result = yield(result, source_array[x])
    x += 1
  end
result
end 
