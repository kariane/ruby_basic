=begin
Query methods são métodos terminados em ?. Eles essencialmente só
devem ser usados quando queremos saber se o resultado é verdadeiro ou
falso, independentemente do seu resultado de fato. São usados basica-
mente com if, unless e afins.
ex:shopping_cart.respond_to? 'clear'
=end