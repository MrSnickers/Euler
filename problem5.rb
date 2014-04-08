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
  least_common_multiple = @target
  current_factor = @target - 1
  while current_factor > 1
    @factors << current_factor if least_common_multiple % current_factor != 0
    current_factor += 1
  end

end


end