require 'csv'

data = CSV.read("test.csv", {:headers => true, :encoding => 'ISO-8859-1'})

#headers of CSV.
p data.headers

#rows
data.each { |row| p row }

#write/append to csv change "w" to "a" for append
CSV.open("test1.csv", "w") do |csv|
  csv << ["69", "0", "56", "123456"]
end
