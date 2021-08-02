time=Time.now
puts time
puts time.year
puts time.month
puts time.day
puts time.hour
puts time.strftime('%d/%m/%y')
puts time.saturday?
puts time.monday?
time2= Time.now
puts time==time2
puts time.year==time2.year