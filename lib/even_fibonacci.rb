def even_fibonacci(n)
  fib(n).select do |int|
    int.even? && int < n
  end
end

def even_fibonacci_sum(n)
  even_fibonacci(n).inject(:+)
end



def fib(n, sequence=[1])
  n.times do
    current_number, last_number = sequence.last(2)
    sequence << current_number + (last_number or 0)
  end
  sequence
end


