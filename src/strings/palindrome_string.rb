def palindrome?(string)
  sanitized_string = string.downcase.gsub(/[^a-z0-9]/i, "")
  sanitized_string == sanitized_string.reverse
end