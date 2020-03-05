=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo
  private

  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.color_code(c)
    COLORS.index(c)
  end

  public

  def self.value(arr)
    self.color_code(arr[0]) * 10 + self.color_code(arr[1])
  end
end
