# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

class PalindromeFinder
  attr_accessor :first, :second

  def initialize
    @first = 999
    @second = 999
    @largest_palendrome = 0
  end

  def find_palendrome
    while @first > 0
      @second = @first
      while @second > 0
        if (@first * @second).to_s == (@first * @second).to_s.reverse
          @largest_palendrome = @first * @second if @first * @second > @largest_palendrome
          puts @first
          puts @second
        end
        @second = @second - 1
      end
      @first = @first - 1
    end
    @largest_palendrome
  end

end

find = PalindromeFinder.new
puts find.find_palendrome