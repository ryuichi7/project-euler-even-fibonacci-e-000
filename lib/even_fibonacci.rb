# def even_fibonacci(n)
#   fib(n).select do |int|
#     int.even? && int < n
#   end
# end

# def even_fibonacci_sum(n)
#   even_fibonacci(n).inject(:+)
# end



# def fib(n, sequence=[1])
#   n.times do
#     current_number, last_number = sequence.last(2)
#     sequence << current_number + (last_number || 0)
#   end
#   sequence
# end

def even_fibonacci_sum(n)
  start = [1,1]

  while start[-2] + start[-1] < n
    start << start[-2] + start[-1]
  end

  result = 0
  start.each { |x| result += x if x.even? }
  p result
end


