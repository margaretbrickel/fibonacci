require 'benchmark'

def recursive_fib(n)
  return  n  if n <= 1
  (recursive_fib(n - 1) + recursive_fib(n - 2))
end

def iterative_fib(n)
  return n if n <= 1
  a, b = 0, 1

  2.upto(n) do |i|
    a, b = b, a + b
  end

  b
 end

num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end