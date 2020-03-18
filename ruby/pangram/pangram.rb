# frozen_string_literal: true

# Determine if a sentence is a pangram
class Pangram
  class << self
    def pangram?(sentence)
      sentence.upcase.scan(/[A-Z]/).uniq.length == 26
    end
  end
end
