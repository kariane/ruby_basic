#Namespace: Serve como um container para agrupar objetos relacionados(classes, constantes, métodos, etc)
=begin
module ReverseWorld
  def self.puts text
    print text.reverse.to_s
  end

  class Imprimir
    def call text
      print text
      print '---Imprimir---'
    end
  end
end
imprimir=ReverseWorld:: Imprimir.new
imprimir.call 'O resultado é: '
=end
=begin
Mixins: Serve para incluir funcionalidades extras as classes
Além de classes,é possível declarar métodos de instância dentro de um módulo. Assim, é possível
“misturar” esses métodos em qualquer classe ou objeto. Dessa forma, é possível fazer
diversas classes obterem um conjunto de comportamento comum com apenas uma
linha de código.
=end
module ImpressaoDecorada
  def imprimir text
    decoracao = '#' * 10
    puts decoracao
    puts text
    puts decoracao
  end
end

module Pernas
  include ImpressaoDecorada
  def chute_frontal
    imprimir 'Chute Frontal'
  end
  def chute_lateral
    imprimir 'Chute Lateral'
  end
end

module Bracos
  include ImpressaoDecorada

  def jab_de_direita
    imprimir 'Jab de direita'
  end

  def jab_de_esquerda
    imprimir 'Jab de esquerda'
  end

  def gancho
    imprimir 'Gancho'
  end
end

class LutadorX
  include Pernas
  include Bracos
end

class LutadorY
  include Pernas
end

lutadorx= LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_de_direita

lutadory=LutadorY.new
lutadory.chute_lateral
=begin
Existe uma outra forma de fazer mixins, com a palavra-chave extend. A dife-
rença é que os métodos são incluídos a nível de classe, e não mais de instância
=end
module Builder
  def build(attributes={})
    new_object = new
    attributes.each do |name, value|
    # O código abaixo é o mesmo que
    # new_object.name = value
    new_object.send "#{name}=", value
    end
  new_object
  end
end
  class ShippingPrice
    extend Builder
    attr_accessor :width, :height, :depth
  end
    shipping = ShippingPrice.build({
    :width => 0.8,
    :height => 0.2,
    :depth => 0.3
  })
shipping.width