# frozen_string_literal: true

# Determine whether given year is a leap year
class Year
  class << self
    def divides?(divisor, year)
      (year % divisor).zero?
    end

    def leap?(year)
      divides?(4, year) && (divides?(100, year) ? divides?(400, year) : true)
    end
  end
end
