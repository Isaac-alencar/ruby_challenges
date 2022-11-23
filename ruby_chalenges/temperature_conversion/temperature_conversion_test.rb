# frozen_string_literal: true

require_relative 'temperature_conversion'

RSpec.describe Kelvin do
  describe '#to_celcius' do
    it 'returns -173.15 when convert from kelvin to celcius' do
      temperature = Kelvin.new(100)

      expect(temperature.to_celsius.value).to eq(-173.15)
    end
  end

  describe '#to_fahrenheit' do
    it 'returns -279.67 when convert from kelvin to celcius' do
      temperature = Kelvin.new(100)

      expect(temperature.to_fahrenheit.value).to eq(-279.67)
    end
  end

  describe '#to_kelvin' do
    it 'returns an instance of itself' do
      temperature = Kelvin.new(100)

      expect(temperature).to be_a Kelvin
    end
  end
end

RSpec.describe Celsius do
  describe '#to_kelvin' do
    it 'returns 373.15 when convert from celcius to kelvin' do
      temperature = Celsius.new(100)

      expect(temperature.to_kelvin.value).to eq(373.15)
    end
  end

  describe '#to_fahrenheit' do
    it 'returns -279.67 when convert from celcius to fahrenheit' do
      temperature = Celsius.new(100)

      expect(temperature.to_fahrenheit.value).to eq(212.0)
    end
  end

  describe '#to_celsius' do
    it 'returns an instance of itself' do
      temperature = Celsius.new(100)

      expect(temperature).to be_a Celsius
    end
  end
end

RSpec.describe Fahrenheit do
  describe '#to_kelvin' do
    it 'returns 373.15 when convert from fahrenheit to celcius' do
      temperature = Fahrenheit.new(100)

      expect(temperature.to_kelvin.value).to eq(310.93)
    end
  end

  describe '#to_celsius' do
    it 'returns -279.67 when convert from fahrenheit to celcius' do
      temperature = Fahrenheit.new(100)

      expect(temperature.to_celsius.value).to eq(37.78)
    end
  end

  describe '#to_celsius' do
    it 'returns an instance of itself' do
      temperature = Fahrenheit.new(100)

      expect(temperature).to be_a Fahrenheit
    end
  end
end
