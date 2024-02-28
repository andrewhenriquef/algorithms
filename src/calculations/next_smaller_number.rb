CANT_BE_REARRANGED = -1

def next_smaller(number)
  extracted_digits = number.digits

  digits_permutation = extracted_digits.permutation.map(&:join)
  possible_combinations = digits_permutation.map(&:to_i)

  combinations_smaller_than_number = possible_combinations.select do |combination|
    combination < number
  end

  next_smaller_combination = combinations_smaller_than_number.max

  return CANT_BE_REARRANGED if next_smaller_combination.nil?

  next_smaller_combination
end
