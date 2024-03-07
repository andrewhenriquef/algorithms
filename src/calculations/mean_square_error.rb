def mean_square_error(first_array, second_array)
  return 0 if first_array.empty? || second_array.empty?

  arrays_size = first_array.count

  combined_elements = first_array.zip(second_array)

  squared_values = combined_elements.map do |first_array_value, second_array_value|
    (first_array_value - second_array_value) ** 2
  end

  sum_of_squared_values = squared_values.sum.to_f
  sum_of_squared_values / arrays_size
end