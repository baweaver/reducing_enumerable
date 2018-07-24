def find(list, &function)
  list.reduce(nil) { |_, i| break i if function.call(i) }
end

def find2(list)
  list.reduce(nil) { |_, i| break i if yield(i) }
end
