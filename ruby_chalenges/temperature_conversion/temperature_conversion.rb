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
  KELVIN_BASE = 273.15
  def inspect
    "#{@value} K"
  end

  def to_celsius
    Celsius.new(@value - KELVIN_BASE)
  end

  def to_fahrenheit
    Fahrenheit.new((@value - KELVIN_BASE) * 9.0 / 5.0 + Fahrenheit::FAHRENHEIT_BASE)
  end
end

# Celsius
class Celsius < Temperature
  def inspect
    "#{@value} °C"
  end

  def to_kelvin
    Kelvin.new(@value + Kelvin::KELVIN_BASE)
  end

  def to_fahrenheit
    Fahrenheit.new((@value * 9 / 5) + Fahrenheit::FAHRENHEIT_BASE)
  end
end

# Fahrenheit
class Fahrenheit < Temperature
  FAHRENHEIT_BASE = 32

  def inspect
    "#{@value} °F"
  end

  def to_celsius
    Celsius.new((@value - FAHRENHEIT_BASE) * 5.0 / 9.0)
  end

  def to_kelvin
    Kelvin.new((@value - FAHRENHEIT_BASE) * 5.0 / 9.0 + Kelvin::KELVIN_BASE)
  end
end

# p Celsius.new(100).to_kelvin

# p Kelvin::CONVERSION_FACTOR
