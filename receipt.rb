require "csv"
# table = CSV.read("input.csv")
table = CSV.parse(File.read("./tourmega_tax/input1.csv"), headers: true)

print table

for

# print table[0][2]
#
#
# CSV.foreach(File.path("input1.csv")) do |row|
#     # Where row[i] corresponds to a zero-based value/column in the csv
#     people << [row[0] + " " + row[1]]
# end


# films_info = []
# CSV.foreach("input1.csv") do |row|
#   films_info << row
# end
# print films_info


# CSV.open("input1.csv", "wb") do |csv|
#   contents.each do |row|
#       csv << row
#   end
# end
# class Receipt
#   def print
#
#   end
# end
