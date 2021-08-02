#similar ao block, porem podem ser salvas em variáveis para serem reutilizadas
=begin
first_lambda= -> {puts "My first Lambda"}#usa -> ou lambda
first_lambda.call
=end
=begin
#recebendo parâmetros
first_lambda= -> (names){ names.each {|name |puts name} }
names= ["João", "Ana", "Marco", "Takami", "Miguel", "Kariane"]
first_lambda.call(names)
=end
=begin
my_lambda= lambda do |numbers|
  index= 0
  puts 'Número atual + próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index+1]})"
    puts numbers[index] + numbers[index+1]
    index+=1
  end
end
numbers=[1,2,3,4]
my_lambda.call(numbers)
=end
#pode-se passar mais de uma lambda como parâmetro no metodo
def foo(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end
first_lambda= -> {puts "My first Lambda"}
second_lambda= lambda {puts "My second Lambda"}

foo(first_lambda, second_lambda)