# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class LeastCommonMultiple

def initialize(target)
  @target = target
  @value = find_value
  @factors = [1]
  find_factors
end

def find_factors
  @factors << 2 if target > 2
  while current_factor < target
    @factors.each do |factor|
      if current_factor % factor == 0
        break
      else
        @factors  << factor
      end
    current_factor += 1
  end

end


end