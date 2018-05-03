# Returns count of digits matching in the two input non-negative integers
# Time complexity: O(k) where k is the number of digits in the number containing less digits
# Aside: The number of digits (i.e. k) in a decimal number n is roughly "log (base 10) of (n * 10)"
#        So the time complexity could be said to be O(lg (n*10)) with lg being log to the base 10.
# Space complexity: O(1) - auxiliary storage does not change based on input
def digit_match(number1, number2)
  return 0 if number1 == nil || number2 == nil # ensure not nil
  return 0 if number1 < 0 || number2 < 0 # ensure non-negative integers

  count = 0
  while number1 > 0 && number2 > 0
    # get the last digit of each number
    last_digit_number1 = number1 % 10
    last_digit_number2 = number2 % 10

    # compare the last digit of each number
    if last_digit_number1 == last_digit_number2
      count += 1
    end

    # remove the last digit of number1 and number2
    number1 = number1 / 10
    number2 = number2 / 10
  end
  return count
end
