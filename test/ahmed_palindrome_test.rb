# frozen_string_literal: true

require "test_helper"

class AhmedPalindromeTest < Minitest::Test
  # def test_that_it_has_a_version_number
  #   refute_nil ::AhmedPalindrome::VERSION
  # end
  

  def test_for_non_valid_palindrome
    refute "apple".palindrome?
  end

  def test_for_valid_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

end
