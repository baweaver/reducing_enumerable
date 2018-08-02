def select(list, &function)
  list.reduce([]) { |a, v|
    a.push(v) if function.call(v)
    a
  }
end

def select2(list)
  list.reduce([]) { |a, v| yield(v) ? a.push(v) : a }
end

def select3(list)
  new_array = []
  list.each { |v| new_array.push v if yield(v) }
  new_array
end
