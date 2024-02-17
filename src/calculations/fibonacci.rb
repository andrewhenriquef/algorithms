def fibonacci(number)
  return number if number <= 1

  fibonacci_sequence = [0, 1]

  while fibonacci_sequence.length <= number
    previous_number = fibonacci_sequence[-1]
    second_to_previous_number = fibonacci_sequence[-2]

    next_number_to_fibonacci_sequence = previous_number + second_to_previous_number
    fibonacci_sequence << next_number_to_fibonacci_sequence
  end

  fibonacci_sequence.last
end
