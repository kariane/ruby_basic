=begin
Procs são estruturas amplamente utilizadas em projetos Ruby por diversas ra-
zões, sendo a possibilidade de transformá-las em blocos é apenas uma delas. É im-
portante ressaltar esse fato: blocos não são procs e vice-versa, mas são facilmente
transformados um no outro usando o &.
=end
def block_it(&block)
  puts block.class
end
block_it{}
puts "======="
logger = proc { |x| puts "#{Time.now} -- #{x}" }
logger.call("Teste!") 
[1,2,3].each(&logger)
puts "======="
p upcase_it = :upcase.to_proc
p upcase_it.call('abcde')
#upcase_it.call(123) não é possivel
p %w{pera uva jaca}.map { |fruit| fruit.upcase }
p %w{pera uva jaca}.map(&:upcase)

