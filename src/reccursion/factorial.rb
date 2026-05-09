def factorial(n)
  return n if n <= 1

  factorial(n - 1) * n
end
