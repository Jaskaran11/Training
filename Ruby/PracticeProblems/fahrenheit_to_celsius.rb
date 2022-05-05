# Fahrenheit to Celsius Converter

class Converter
  def initialize(frt)
    @frt = frt
  end

  def value_in_celsius
    (@frt - 32) * 5 / 9
  end
end

converter = Converter.new(77)
puts converter.value_in_celsius