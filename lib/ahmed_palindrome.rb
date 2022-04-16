# frozen_string_literal: true

require_relative "ahmed_palindrome/version"


module AhmedPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  # def letters
  #   chars.select{ |c| c.match(/[a-z]/i) }.join
  # end
  
  private


  def processed_content
    self.to_s.scan(/[a-z\d]/i).join.downcase
  end
end

class String
  include AhmedPalindrome
end

class Integer
  include AhmedPalindrome
end
