def foo(x)
  if x
    42
  else
    "str"
  end
end

foo(true)
foo(false)

# Object#foo :: (Boolean) -> (String | Integer)


# overrided method
def identity(x)
  x
end

identity(42)
identity("str")
identity(:sym)

# Object#identity :: (Integer) -> Integer
# Object#identity :: (String) -> String
# Object#identity :: (Symbol) -> Symbol


# recursive method
def fib(x)
  if x <= 1
    x
  else
    fib(x - 1) + fib(x - 2)
  end
end

fib(40000)

# Object#fib :: (Integer) -> Integer


# user-defined classes
class A
  def foo(x)
    bar(x)
  end

  def bar(x)
  end
end

class B < A
  def bar(x)
  end
end
A.new.foo(1)
B.new.foo("str")

# A#foo :: (Integer) -> NilClass
# A#bar :: (Integer) -> NilClass
# B#foo :: (String) -> NilClass
# B#bar :: (String) -> NilClass

__END__
Object#foo :: (Boolean) -> (String | Integer)
Object#identity :: (Integer) -> Integer
Object#identity :: (String) -> String
Object#identity :: (Symbol) -> Symbol
Object#fib :: (Integer) -> Integer
A#foo :: (Integer) -> NilClass
A#foo :: (String) -> NilClass
A#bar :: (Integer) -> NilClass
B#bar :: (String) -> NilClass
