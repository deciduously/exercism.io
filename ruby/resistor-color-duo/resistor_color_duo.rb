class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  private_class_method def self.color_code(color)
    COLORS.index(color)
  end

  def self.value(arr)
    color_code(arr[0]) * 10 + color_code(arr[1])
  end
end
