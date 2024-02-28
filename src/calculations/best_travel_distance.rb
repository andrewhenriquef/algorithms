def choose_best_sum(max_sum_distance, number_of_towns_to_visit, distances)
  possible_combinations = distances.combination(number_of_towns_to_visit).map(&:sum)

  possible_combinations.select do |distance|
    distance <= max_sum_distance
  end.max
end