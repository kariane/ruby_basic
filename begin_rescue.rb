=begin
def calculate_installment_price(total_value, installments)
  begin
    puts "O resultado é #{total_value / installments}"
  rescue
    puts "Não foi possível calcular o valor da parcela"
  end
end
calculate_installment_price(100, 5)
calculate_installment_price(100, 0)
=end
def calculate_installment_price(total_value, installments)
  begin
    puts "O resultado é #{total_value / installments}"
  rescue ZeroDivisionError
    puts "Número de parcelas deve ser > 0"
  rescue
    puts "Não foi possível calcular o valor da parcela"
  end
end
calculate_installment_price(100, 5)
calculate_installment_price(100, 0)
calculate_installment_price("", 0)

def calculate_installment_price(total_value, installments)
  begin
    puts "O resultado é #{total_value / installments}"
  rescue
    puts "Não foi possível calcular o valor da parcela"
  ensure #é executado independente das exceções, pode ser usado até sem o rescue
    puts "Pronto."
  end
  end
calculate_installment_price(100, 5)
calculate_installment_price(100, 0)