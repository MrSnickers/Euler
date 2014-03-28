# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

class MultiplesSum
  attr_accessor :running_total
  attr_reader :factor1, :factor2, :limit

  def initialize(factor1, factor2, limit)
    @factor1 = factor1
    @factor2 = factor2
  end

  def all_together
    @running_total = 0
    x = 1
    while x < limit
      @running_total += x if (x % factor1 == 0 || x % factor2 == 0)
      x += 1
    end
    running_total
  end

end

adder = MultiplesSum.new(3,17,1000).all_together
puts adder