CPF_weight = 11

def cpf_valid?(cpf)
  sanitized_cpf = cpf.gsub(/\D/, '')

  return false if sanitized_cpf.length != CPF_weight

  first_nine_digits = sanitized_cpf[0..8].chars.map(&:to_i)

  # calculate first check digit
  decreasing_sequence = (2..10).to_a.reverse
  first_check_digit = generate_check_digit(first_nine_digits, decreasing_sequence)
  first_ten_digits = first_nine_digits
  first_ten_digits << first_check_digit

  # calculate second check digit
  decreasing_sequence = (2..11).to_a.reverse
  second_check_digit = generate_check_digit(first_ten_digits, decreasing_sequence)
  first_ten_digits << second_check_digit

  first_ten_digits.join == sanitized_cpf
end

def generate_check_digit(digits, decreasing_sequence)
  digits_sum = digits.sum do |digit|
    decreasing_sequence.shift * digit
  end

  check_digit = digits_sum % CPF_weight

  if check_digit < 2
    check_digit = 0
  else
    check_digit = CPF_weight - check_digit
  end

  check_digit
end