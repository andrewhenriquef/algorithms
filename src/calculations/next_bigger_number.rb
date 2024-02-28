CANT_BE_REARRANGED = -1

def next_bigger(number)
  extracted_digits = number.digits

  digits_permutation = extracted_digits.permutation.to_a
  possible_combinations = digits_permutation.map(&:join).map(&:to_i)

  combinations_greater_than_number = possible_combinations.select do |combination|
    combination > number
  end

  next_greater_combination = combinations_greater_than_number.min

  return CANT_BE_REARRANGED if next_greater_combination.nil?

  next_greater_combination
end
