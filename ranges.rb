#inclui o último número
valid_years = 1920..2010
puts valid_years.include? 1998
puts valid_years.include? 2010
#não inclui o último número
valid_years = 1920...2010
puts valid_years.include? 1998
puts valid_years.include? 2010
