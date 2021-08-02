#self é variável especial que aponta para o objeto atual
#aponta para o objeto onde ela se encontra
=begin
class Foo
  attr_accessor :teste
  def bar
    puts self
  end
 end
  
 foo = Foo.new
 puts foo
 foo.bar
=end
=begin
class Fo1
  def self.bar
    puts self
  end
end

Fo1.bar
=end
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
 end
  
 pen = Pen.new
 pen.color = "blue"
 pen.pen_color