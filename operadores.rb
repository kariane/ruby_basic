#------------------Operadores Aritméticos------------------
puts 1 + 1 #soma
puts 2 - 1 #subtracao
puts 4 * 2 #multiplicacao
puts 4 / 2 #divisao
puts 5 % 2 #resto
puts 2 ** 3 #exponenciação
#------------------Operadores relacionais------------------
puts 1 > 2 #maior
puts 2 < 1 #menor
puts 2 >= 1 #maior igual
puts 1 <= 2 #menor igual
puts 2 == 1 #igual
puts 2 != 2 #diferente
puts 1 <=> 2 #primeiro numero menor que o segundo retorna -1
puts 2 <=> 2 #numeros iguais retorna 0
puts 2 <=> 1 #primeiro numero maior que o segundo retorna 1
#------------------Operadores de Atribuicao------------------
a=2
a += 4 #a = a + 4 
a -= 4 #a = a - 4
a *= 4 #a = a * 4 
a /= 4 #a = a / 4
a %= 4 #a = a % 4 
a **= 4 #a = a ** 4 
puts a = 100
puts a = 100000000 # Fica difícil ler com muitos zeros
puts a = 100_000_000 # Pode usar _ para separar e possui o mesmo efeito
puts a = 100.0
puts 100.0.to_i # 100 - Conversão de float para inteiro
puts 100.to_f # 100.0 - Conversão de inteiro para float