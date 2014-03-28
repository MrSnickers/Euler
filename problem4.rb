# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class PalindromeFinder
  attr_accessor :first, :second

  def initialize
    @first = 999
    @second = 998
  end

  def find_palendrome
    total = (@first * @second).to_s
    until (total[0] == total[-1] && total[1] == total[-2] && total[2] == total[-3])
      @first = @first - 1
      @second = @second - 1
      total = (@first * @second).to_s
      puts total
    end
    total
  end

end

find = PalindromeFinder.new
puts find.find_palendrome