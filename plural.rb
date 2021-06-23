=begin
    "#{palavra}s"
puts plural("caneta")
puts plural("carro")
=end
#o Metodo abaixo utiliza o OpenClasses
class String
    def plural
        "#{self}s"
    end
end
puts "caneta".plural