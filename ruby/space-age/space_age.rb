# frozen_string_literal: true

# Calculate someone's age in years on various planets from seconds
class SpaceAge
  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
  end

  private

  def earth_year
    365.25
  end

  def planets
    {
      mercury: 0.2408467,
      venus: 0.61519726,
      mars: 1.8808158,
      jupiter: 11.862615,
      saturn: 29.447498,
      uranus: 84.016846,
      neptune: 164.79132
    }.freeze
  end

  public

  def on_earth
    seconds / 60 / 60 / 24 / earth_year
  end

  def on_mercury
    on_earth / planets[:mercury]
  end

  def on_venus
    on_earth / planets[:venus]
  end

  def on_mars
    on_earth / planets[:mars]
  end

  def on_jupiter
    on_earth / planets[:jupiter]
  end

  def on_saturn
    on_earth / planets[:saturn]
  end

  def on_uranus
    on_earth / planets[:uranus]
  end

  def on_neptune
    on_earth / planets[:neptune]
  end
end
