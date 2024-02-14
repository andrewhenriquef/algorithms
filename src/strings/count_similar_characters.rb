def count_occurrences_of_characters(string)
  string
    .chars
    .group_by(&:itself)
    .transform_values(&:count)
end

def count_occurrences_of_give_character(string, character)
  string.chars.count(character)
end

