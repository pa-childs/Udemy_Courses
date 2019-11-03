salaries = {Developer: 125000, Quality_Assurance: 80000, Manager: 150000}

salaries.each_key do |position|

  puts "Employee Position: #{position}"

end

puts

salaries.each_value { |salary| puts "Employee Salary: #{salary}" }

puts

# accept hash as arguement
# return array of key of the hash
number_hash = {a: 5, b: 2, c: 3, d: 5}

def hash_keys(hash)

  keys = []

  hash.each do |key, value|

    keys << key

  end

  return keys

end

def hash_values(hash)

  values = []

  hash.each do |key, value|

    values << value

  end

  return values.uniq

end

p hash_keys(number_hash)
p hash_values(number_hash)
