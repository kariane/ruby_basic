#pode ser entendido como uma funcao anonima ou sem nome
#definido entre do...end(varias linhas) ou conchetes(unica linha)
#5.times {puts "Exec block"}
=begin
sum = 0
numbers=[5, 10, 5]
numbers.each {|number| sum+=number}
puts sum
=end
=begin
foo={2=>3, 4=>5}
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"

end
=end
=begin
#Metodo que recebe um block:
def foo
  yield#procura o bloco
  yield
end

foo{puts "Exec block"}
=end
=begin
#para saber se o bloco foi passado ou nao
def foo
  if block_given? #para saber se o parâmetro foi passado ou nao
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end
foo
foo do 
  puts "Com parâmetro do tipo bloco"
end
• Para blocos curtos, de apenas uma linha, adota-se as chaves;
• Para blocos longos, de duas ou mais linhas, adota-se o do ...
end.
=end
def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers={2=>3, 4=>5, 5=>4}

foo(numbers) do |key, value|
  puts "key + value = #{key + value}"
  puts "key * value = #{key * value}"
  puts "======="
end

fruits = %w{pera uva maçã}
fruits.each do |fruit|
puts "Gosto de " + fruit
end
puts "======="
a = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
counter = 0
a.each { |val| counter += 1 }
puts "O valor do contador é: #{counter}"

puts "======="
a = %w{a b c}
i = 5
a.each do |i|
puts i
end 
puts i

puts "======="
a = %w{w o r d}
a.each do |letter|
word ||= ""
word << letter
puts word
end
#Podemos assim usar o _, que irá “absorver” esse parâmetro sem ter a necessidade de ter que declarar uma nova variável:
#É recomendado sempre usar o _ ao invés de simplesmente omitir os valores.
puts "======="
a = {:a => 1, :b => 2, :c => 3}
a.each do |_, value|
#a.each do |key, value|
puts value
#puts _
end
puts "======="
a = {:a => 1, :b => 2, :c => 3}
a.each do |key|
  puts key
end

puts "======="
#• break - Pára o iterador completamente no momento em que for chamado;
#• next - Passa para o próximo elemento;
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |number|
next if number.odd?
puts number
end # 2; 4; 6; 8; 10
numbers.each do |number|
break if number > 5
puts number
end