def bubble_sort(numbers)
  itens_counter = numbers.length
  swap_occurred = true

  while swap_occurred do
    swap_occurred = false
    counter = 0

    numbers.each_with_index do |number, index|
      break if index >= (itens_counter - 1)

      next_number_position = index + 1

      if number > numbers[next_number_position]
        temporary = number
        numbers[index] = numbers[next_number_position]
        numbers[next_number_position] = temporary

        swap_occurred = true
      end
    end
  end

  numbers
end