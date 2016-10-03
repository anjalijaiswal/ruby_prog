module ReturnData
  def data
    { name: 'xyz', address: 'abc'}
  end

  # def name
  #   data[:name]
  # end
  #
  # def address
  #   data[:address]
  # end

  ['name', 'address'].each do |method|
    define_method(method) { data[method.to_sym] }
  end
end

class Company
  include ReturnData
end

class Person
  include ReturnData
end

company = Company.new
person = Person.new

puts person.name
puts person.address
puts company.name
puts company.address
