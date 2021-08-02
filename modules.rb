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

#Mixins: Serve para incluir funcionalidades extras as classes
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
