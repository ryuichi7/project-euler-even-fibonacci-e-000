class EvenFibonacci

  def initialize(n)
    @n = n
  end

  def even_fibonacci
    fib.select do |int|
      int.even? && int < @n
    end
  end

  def sum
    even_fibonacci.inject(:+)
  end

  def fib(sequence=[1])
    @n.times do
      current_number, last_number = sequence.last(2)
      sequence << current_number + (last_number or 0)
    end
    sequence
  end
end

