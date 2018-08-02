def map(list, &function)
  list.reduce([]) { |a, v| a.push function.call(v) }
end

def map2(list)
  list.reduce([]) { |a, v| a.push yield(v) }
end

def map3(list)
  new_array = []
  list.each { |v| new_array.push yield(v)}
  new_array
end
