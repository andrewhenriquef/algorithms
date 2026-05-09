def flatten_array(list)
  return [list] if list.is_a?(Integer)

  list.reduce([]) do |accumulator, element|
    accumulator + flatten_array(element)
  end
end
