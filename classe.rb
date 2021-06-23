=begin
A classe deve começar com uma letra maiuscula, o nome da classe é uma constante
Quando criamos uma classe, ganhamos automaticamente um método initialize default, para que o objeto possa ter informações inicializadas
Exemplo:
class Livro
def initialize(autor,numero_de_paginas, isbn)
end
end
o new serve para criarmos uma instância da classe(criando um objeto daquele tipo para a classe),

teste_e_design = Livro.new "Mauricio Aniche", 247, "123454"
web_design_responsivo = Livro.new "Tárcio Zemel", 189, "452565"

=end
#caso queira criar uma instância que n possua o isbn, e queira adicionar outra funçao initialize,Exemplo
=begin
class Livro
def initialize(autor, numero_de_paginas, isbn)
end
def initialize(autor, numero_de_paginas)
end
 end
# isso n será possível, já que o interpretador do Ruby considerará apenas o último metodo definido, já que Ruby n suporta sobrecargas.
=end
#para que isso dê certo, precisamos fazer do seguinte modo:

class Livro
    def initialize(autor,numero_de_paginas, isbn="1")
        puts "Autor: #{autor}\nNúmero de páginas: #{numero_de_paginas}\nISBN: #{isbn}"
    end
end
teste_e_design = Livro.new "Mauricio Aniche", 247, "123454"
web_design_responsivo = Livro.new "Tárcio Zemel", 189, "452565"
web_design_responsi = Livro.new "Tárcio Zemel", 189
#Explicação:para que n ocorra o erro de um dos livros n ter ISBN, ele atribui o valor = 1, sendo assim, n terá erro na hora de executar o codigo