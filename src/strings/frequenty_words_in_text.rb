def frequenty_words_in_text(text)
  sanitized_text = text.gsub(/[^a-zA-Z']/, ' ').downcase

  equal_words_grouped = sanitized_text.split(' ').group_by(&:itself)
  occurrences_of_words = equal_words_grouped = equal_words_grouped.sort_by do |word, occurrences|
    occurrences.size
  end

  top_3_words = occurrences_of_words.reverse.first(3)

  # return only the words not the ocurrences
  top_3_words.map(&:first)
end