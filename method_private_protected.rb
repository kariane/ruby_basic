#Método interno de uma classe, apenas os métodos públicos dessa classe 
#ou de classes descendentes podem chamá-lo
#O self é o único receptor de um método private
=begin
class Foo
  def call_private
    bar
  end
  
  private
  
  def bar
    puts "private method"
  end
 end
  
 foo = Foo.new
  
 foo.call_private
 #se tentar chamar foo.bar dará erro
=end
 #Diferente do private o protected pode ter como receptor qualquer instância da sua classe
 class Foo
  def call_protected(instance)
    instance.bar
  end
  
  protected
  
  def bar
    puts "protected method"
  end
 end
  
 instance_1 = Foo.new
  
 instance_2 = Foo.new
  
 instance_1.call_protected(instance_1)
  
 instance_1.call_protected(instance_2)