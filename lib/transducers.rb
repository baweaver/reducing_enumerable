# Going to give fair warning now, it gets trippy beyond here.

def mapping(&function)
  -> joins_fn {
    -> a, v { joins_fn[a, yield(v)] }
  }
end

def maps(&function)
  mapping(&function).call(concats)
end

def filtering(&function)
  -> joins_fn {
    -> a, v { yield(v) ? joins_fn[a, v] : a }
  }
end

def filters(&function)
  filtering(&function).call(concats)
end

# Joining functions
def concats
  proc { |a, v| a.push(v) }
end

def adds
  proc { |a, v| a + v }
end

[1,2,3,4,5]
  .reduce([], &mapping   { |v| v * 3   }.call(concats))
  .reduce([], &filtering { |v| v.even? }.call(concats))
  # => [6, 12]

# `gem install ramda-ruby`
require 'ramda'

[1,2,3,4,5].reduce([], &Ramda.pipe(
  mapping   { |v| v + 1   },
  filtering { |v| v.even? },
  mapping   { |v| v * 3   }
).call(concats))
# => [7, 13]
