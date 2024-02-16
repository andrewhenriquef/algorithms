def uppercase_based_on_array(string, positions_to_upcase)
  positions_to_upcase.each do |position|
    string[position] = string[position].upcase
  end

  string
end