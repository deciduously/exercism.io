class Acronym
  class << self
    def abbreviate(word)
      word.split(/\W+/).inject('') { |acc, w| acc << w[0].upcase }
    end
  end
end
