def quicksort(array)
  return array if array.length < 2

  lead = (array.length / 2).to_i

  lower_than = array.select { |item| item < array[lead] }
  greater_than = array.select { |item| item > array[lead] }
  equals = array.select { |item| item == array[lead] }

  quicksort(lower_than) + equals + quicksort(greater_than)
end
