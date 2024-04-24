class TddCalculator
  def self.add(numbers_string)
    return 0 if numbers_string.empty?
    numbers = numbers_string.split(',').map(&:to_i) # sum of number in string
    numbers.sum
  end
end

