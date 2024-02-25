
START_FROM_SECOND_ELEMENT = 1

def insertion_sort(collection_of_numbers)
  total_iterations = (collection_of_numbers.length - 1)

  for index in START_FROM_SECOND_ELEMENT..total_iterations do
    position = 0
    number_to_sort = collection_of_numbers[index]

    while number_to_sort > collection_of_numbers[position] && position < index do
      position += 1
    end

    if position != index
      collection_of_numbers.delete(number_to_sort)
      collection_of_numbers.insert(position, number_to_sort)
    end
  end

  collection_of_numbers
end
