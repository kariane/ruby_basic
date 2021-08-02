#é uma sequência de caracteres especiais que nos ajudam a 
#identificar (e selecionar) padrões de caracteres em strings.
=begin
puts /abcde/.class
puts %r{abcde}.class
Regexp.new('abcde')
puts 'Ruby' =~ /by/
puts /by/ =~ 'Ruby'
puts /Rail/ =~ 'Ruby' #null
=end
=begin
phrase = "Hellow, how are you?"
 
match_data = /how/.match(phrase)
puts match_data #mostra o que bate com o regex
puts match_data.pre_match#mostra o que tá antes do que bate com o regex
puts match_data.post_match#mostra o que tá depois do que bate com o regex
=end
puts /\?/.match('Tudo bem?')
puts /[1-5]/.match('123')
puts /[a-z]/.match('Oi')#vai chamar o i pq é minusculo
puts /[A-Z]/.match('iO')
puts /A\d/.match('A4')
puts /[0-9]/.match('A4')
puts /\d/.match('A4')#d=decimal
puts /[0-9]{2}-[0-9]{9,}/.match('11-980319497')#A virgula do {9,} serve para dizer que pode ser mais