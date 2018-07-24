def select(list, &function)
  list.reduce([]) { |a, i|
    a << i if function.call(i)
    a
  }
end

def select2(list)
  list.reduce([]) { |a, i| yield(i) ? (a << i) : a }
end
