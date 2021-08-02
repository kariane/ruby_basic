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