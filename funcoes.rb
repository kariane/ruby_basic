nome = "Linguagem Ruby"
isbn = "342-65675756-1"
numero_paginas = 245
preco = 69.90
desconto = 0.1
#isso abaixo é uma função, que facilita caso tenha que repetir a mesma operação diversas vezes e com valores diferentes. 
def preco_com_desconto(preco, desconto)
    preco - (preco * desconto)
    
end
#modo de chamar a função, passando preco e o desconto:
puts preco_com_desconto(preco, desconto)
