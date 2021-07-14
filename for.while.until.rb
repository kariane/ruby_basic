for numero in (1..100)
    puts "Numero: #{numero}"  
end
#este (1..100) cria um range de números de 1 até 100 que é exatamente o número de vezes que desejamos executar a impressão do número
#O ...(exclui o último número) e o ..(inclui todos os números) são operadores de intervalo, ou seja, vai de tal número até tal número
#While executa um bloco de código até que uma determinada condição seja falsa.Exemplo:

number = 0

while number <= 100
    puts "Number: #{number}"
    number +=1
end

 #Until Executará o código até que uma determinada condição seja verdadeira. Exemplo:
 
until number == 100
    puts "Numero: #{number}"
    number -= 1
end