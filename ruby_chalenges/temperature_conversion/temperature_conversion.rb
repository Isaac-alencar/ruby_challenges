# frozen_string_literal: true

# Class Temperature
class Temperature
  attr_reader :value

  def initialize(value)
    @value = value.round(2)
  end

  def to_celsius
    self
  end

  def to_fahrenheit
    self
  end

  def to_kelvin
    self
  end
end

# kelvin
class Kelvin < Temperature
  def inspect
    "#{@value} K"
  end

  def to_celsius
    Celsius.new(@value - 273.15).to_celsius
  end

  def to_fahrenheit
    Fahrenheit.new((to_celsius.value * (9.0 / 5.0) + 32))
  end
end

# Celsius
class Celsius < Temperature
  def inspect
    "#{@value} °C"
  end

  def to_kelvin
    Kelvin.new(@value + 273.15).to_kelvin
  end

  def to_fahrenheit
    Fahrenheit.new(@value * (9.0 / 5.0) + 32)
  end
end

# Fahrenheit
class Fahrenheit < Temperature
  def inspect
    "#{@value} °F"
  end

  def to_celsius
    Celsius.new((@value - 32) * 5.0 / 9.0)
  end

  def to_kelvin
    Kelvin.new(to_celsius.value + 273.15)
  end
end

p Celsius.new(100).to_kelvin
