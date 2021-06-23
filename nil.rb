#O nil, serve para representar um valor/espaço vazio em Ruby, quando é atribuida a uma variavel, queremos dizer que ela n possui nenhum valor. Exemplo:
nome=nil
puts "Seja bem vindo #{nome}" if not nome.nil?
#O if not, pode ser substituido por unless. Exemplo:
puts "Seja bem vindo #{nome}" unless nome.nil?
#podemos melhorar ainda mais este código, da seguinte forma:
puts "Seja bem vindo #{nome}" if nome