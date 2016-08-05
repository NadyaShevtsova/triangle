require 'byebug'

class Triangle
  attr_accessor :a, :b, :c

  def initialize *args
    self.a, self.b, self.c = args.flatten
  end

  def check_type
    return 'Error' unless valid_data?
    return 'Equilateral' if [a ,b, c].uniq.length.eql?(1)
    return 'Scalene' if a.eql?(b) or a.eql?(c) or b.eql?(c)
    return 'Isosceles'
  end

  private
  def valid_data?
    return false if !a && !b && !c
    self.a = Integer(a) rescue nil
    self.b = Integer(b) rescue nil
    self.c = Integer(c) rescue nil
    return a && b && c
  end
end
