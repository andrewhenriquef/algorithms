def fizz_buzz_print(number)
  case number
  when  -> (n) { n % 3 == 0 && n % 5 == 0 }
    "FizzBuzz"
  when -> (n) { n % 3 == 0 }
    "Fizz"
  when -> (n) { n % 5 == 0 }
    "Buzz"
  else
    number.to_s
  end
end