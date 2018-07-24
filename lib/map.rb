def map(list, &function)
  list.reduce([]) { |a, i| a << function.call(i) }
end

def map2(list)
  list.reduce([]) { |a, i| a << yield(i) }
end
