def string_incrementer(string)
  characters_of_string = string.chars
  number_at_the_end_of_string = string.match(/([1-9]\d*|0)$/)

  puts "number_at_the_end_of_string: #{number_at_the_end_of_string}"
  return "#{string}1" if number_at_the_end_of_string.nil?

  number_increased = number_at_the_end_of_string.to_s.to_i + 1
  string.gsub(/([1-9]\d*|0)$/, number_increased.to_s)
end

