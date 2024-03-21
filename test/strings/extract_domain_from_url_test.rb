require 'minitest/autorun'
require "./src/strings/extract_domain_from_url"

# Exercise: Extract Domain from url
# Description: Write a function that when given a URL as a string, parses out
# just the domain name and returns it as a string

# Constraints:

# Inputs and Expected Outputs:
# Input: "http://google.com"
# Output: "google"

# Input: "http://google.co.jp"
# Output: "google"

# Input: "www.xakep.ru"
# Output: "xakep"

# Input: "https://youtube.com"
# Output: "youtube"

# Input: "https://www.youtube.com"
# Output: "youtube"

# Input: "icann.org"
# Output: "icann"

class ExtractDomainFromUrlTest < Minitest::Test
  def test_domain_name
    assert_equal "google", domain_name("http://google.com")
    assert_equal "google", domain_name("http://google.co.jp")
    assert_equal "xakep", domain_name("www.xakep.ru")
    assert_equal "youtube", domain_name("https://youtube.com")
    assert_equal "youtube", domain_name("https://www.youtube.com")
    assert_equal "icann", domain_name("icann.org")
  end
end