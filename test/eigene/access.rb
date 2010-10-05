  class Attributes
    attr_accessor :color, :size
    def initialize()
      @color = 'blue'
      @size = 27
    end
end
a = Attributes.new()
puts a.size().to_s()

@col

att = Attributes.new do |attrib|
  attrib.color = 'green'
  @col = attrib.color
  puts attrib.color
end

puts att.color
puts @col

