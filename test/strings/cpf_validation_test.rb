
require "minitest/autorun"
require "./src/strings/cpf_validation"

# Exercise: CPF Validation
# Description: Write a function that validates a CPF based on its check digits.
# The CPF number contains 11 digits, the last two are check digits, which are used to guarantee the integrity of the first 9 digits, similar to a hash function. To calculate these two digits

# Here's how you would do it:

# Multiply each of the first nine digits by a decreasing sequence of numbers from 10 to 2, and then sum the results:

# (1*10) + (2*9) + (3*8) + (4*7) + (5*6) + (6*5) + (7*4) + (8*3) + (9*2) = 285

# Calculate the remainder of the sum divided by 11:

# 285 mod 11 = 9

# If the remainder is less than 2, the first check digit is 0. Otherwise, subtract the remainder from 11. So, the first check digit is 11 - 9 = 2.

# Now, take the first nine digits and the first check digit, multiply each by a decreasing sequence of numbers from 11 to 2, and then sum the results:

# (1*11) + (2*10) + (3*9) + (4*8) + (5*7) + (6*6) + (7*5) + (8*4) + (9*3) + (2*2) = 330

# Calculate the remainder of the sum divided by 11:

# 330 mod 11 = 0

# If the remainder is less than 2, the second check digit is 0. Otherwise, subtract the remainder from 11. So, the second check digit is 0.

# So, the complete CPF with the check digits is 123.456.789-20.

# Inputs:

# Input: "529.982"
# Output: false

# Input: "529.982.247-25"
# Output: true

# Input: "529.982.247-22"
# Output: false

# Input: "52998224725"
# Output: true

class CpfValidationTest < Minitest::Test
  def test_cpf_valid
    assert_equal false, cpf_valid?("529.982")
    assert_equal true, cpf_valid?("529.982.247-25")
    assert_equal false, cpf_valid?("529.982.247-22")
    assert_equal true, cpf_valid?("52998224725")
  end
end