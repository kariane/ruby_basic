#method missing serve para quando o metodo que é chamado não existe, para iss o chama no lugar, para que assim não dê erro
class Fish
  def method_missing(method_name)
    puts "Fish don't have #{method_name} behavior"
  end
  
  def swim
    puts 'Fish is swimming'
  end
 end
  
 fish = Fish.new
 fish.swim
 fish.walk