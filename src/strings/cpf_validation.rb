def cpf_valid?(cpf)
  sanitized_cpf = cpf.gsub(/\D/, '')

  return false if sanitized_cpf.length != 11

  first_nine_digits = sanitized_cpf[0..8].split('').map(&:to_i)

  # calculate first check digit
  counter = (2..10).to_a.reverse

  first_nine_digits_sum = first_nine_digits.sum do |digit|
    counter.shift * digit
  end

  first_check_digit = first_nine_digits_sum % 11

  if first_check_digit < 2
    first_check_digit = 0
  else
    first_check_digit = 11 - first_check_digit
  end

  first_ten_digits = first_nine_digits
  first_ten_digits << first_check_digit

  # calculate second check digit
  counter = (2..11).to_a.reverse

  first_ten_digits_sum = first_ten_digits.sum do |digit|
    counter.shift * digit
  end

  second_check_digit = first_ten_digits_sum % 11

  if second_check_digit < 2
    second_check_digit = 0
  else
    second_check_digit = 11 - second_check_digit
  end

  first_ten_digits << second_check_digit

  first_ten_digits.join == sanitized_cpf
end