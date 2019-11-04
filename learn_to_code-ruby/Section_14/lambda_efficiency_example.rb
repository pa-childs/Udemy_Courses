to_euros = lambda { |dollars| dollars * 0.95}
to_pesos = lambda { |dollars| dollars * 20.96}
to_rupees = lambda { |dollars| dollars * 68.13}

def convert(dollars, currency_lambda)

  currency_lambda.call(dollars) if dollars.is_a?(Numeric)

end

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)
puts

currency_amounts = [100, 200, 300]
p currency_amounts.map(&to_euros)
