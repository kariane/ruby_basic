puts "Digite sua idade:"
#no gets, tudo é string, por isso se vc tentar fazer operacoes, dará erro
#para isso é feito a coersao 
#que sao usados os metodos .to_i(para inteiros), .to_f(para float), .to_s(para String)
idade=gets.chomp#pode aplicar o to_i aqui tbm, ficaria idade=gets.chomp.to_i
idade_prox_ano=idade.to_i+1
puts "Sua idade ano que vem será: #{idade_prox_ano}"

