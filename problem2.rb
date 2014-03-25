class Fibbonacci
  attr_reader :terminus

  SEQUENCE = [0,1]

  def initialize(terminus)
    @terminus = terminus
    populate_sequence
  end

  def populate_sequence
  combined = SEQUENCE[-2] + SEQUENCE[-1]
    while combined <= terminus
      SEQUENCE << combined
      combined = SEQUENCE[-2] + SEQUENCE[-1]
      puts combined
    end
  end

  def all_even
    i = 0
    total = 0
    puts SEQUENCE[i].class
    puts terminus.class
    # while SEQUENCE[i] < terminus
    #   total += SEQUENCE[i]
    #   i += 2
    # end
    # total
    puts "Popcorn"
  end

end

fib = Fibbonacci.new(4000000)
puts Fibbonacci::SEQUENCE
# puts fib.all_even