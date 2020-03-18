class Acronym
  class << self
    def abbreviate(word)
      word.scan(/(\w)\w*/).join.upcase
    end
  end
end
