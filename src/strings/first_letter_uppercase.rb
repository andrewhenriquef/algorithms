def first_letter_uppercased?(string)
  first_letter = string[0]

  first_letter.match?(/[A-Z]/)
end