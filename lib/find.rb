# Note that find actually takes a second block to call in case it needs
# a default value. I'm ignoring that for these examples.

def find(list, &function)
  list.reduce(nil) { |_, v| break v if function.call(v) }
end

def find2(list)
  list.reduce(nil) { |_, v| break v if yield(v) }
end

def find3(list)
  list.each { |v| return v if yield(v) }

  nil
end
