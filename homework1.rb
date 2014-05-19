class InversionFinder
  attr_readable :inversion_quanitity, :original_array

  def intialize(file)
    original_array = File.open(file).readlines
    inversion_quanitity = find_inversions(original_array)
  end

  def find_inversions(array)
    inversion_counter = 0
    if array.length > 2
      find_inversions(array[0..(array.length/2).floor]
      find_inversions(array[(array.length/2).floor+1..-1])
    else
      if

  end


end