v= [68,69,70]
puts "#{v}"
a = [1, 2, 1+2]
a << 4 
a << "string!"
p a
puts "-------------"
a = ["a", "b", "c", "d", "e"]
p a[0]
p a[0..2] 
p a[0, 2]
p a[0...2]
puts "-------------"
list = ["a", "b", "c"]
#first, second, third = list
#p first 
#p second 
first, *tail = list
p first # => "a"
p tail
puts "-------------"
#Array de string
a = %w{a b c d e}
p a
puts "-------------"
#array com frases
c = %w{long\ words small tiny}
p c

puts "----------"
a = ["a", "b", "c"]
b = ["a", 2, 3]
p a + b # ["a", "b", "c", "a", 2, 3]
p a - b # ["b", "c"]
p b - a # [2, 3]
p c = [1, 2]
p c * 3
p a | b # Na união, elementos duplicados são removidos
p a & b # intersecção
p a.reverse
puts "----------"
p ['acerola', 'laranja'].join(' e ') #concatena as strings
p [10, 20, nil, '', false, true].compact #tira o nil
p [6, 3, 9].sort #ordena os resultados
p [3, 3, 9].uniq #apenas os elementos únicos
p [[3], 2, 1].flatten #achata listas internas
puts "----------"
a = [1, 2, 3]
a.pop # 3 - sai o último elemento
p a
a.shift # 1 - sai o primeiro elemento
p a
puts "----------"
#bang: terminada em exclamação, que modifica o conteúdo da própria variável, ao invés de retornar uma
#cópia modificada:
a = [[3], 2, 1]
b = a.flatten
p a
p b
puts "----------"
a = [[3], 2, 1]
b = a.flatten!
p a
p b
