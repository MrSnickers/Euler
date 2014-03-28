class PrimeFinder
  attr_reader :target
  attr_accessor :prime_factors

  def initialize(target)
    @target = target
    @prime_factors = []
    @last_largest
  end

  def find_prime_factors
    x = 3
    while x <= target^(1/2)
      if target % x == 0
        prime_factors << x if not_reducable?(x)
      end
      x += 2
    end
  end

  def largest_prime
    @prime_factors.last
  end

  def not_reducable?(number)
    flag = true
    prime_factors.each do |factor|
      flag = false if number % factor == 0
    end
    flag
  end

end

finder = PrimeFinder.new(600851475)
finder.find_prime_factors
puts finder.prime_factors
puts finder.largest_prime