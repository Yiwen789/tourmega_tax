require "csv"
require_relative "Product"
require_relative "Cart"
table = CSV.parse(File.read("./tourmega_tax/input1.csv"), headers: true)

product1 = Product.new("CD", 12.9, 1)

cart = Cart.new

cart.add(product1)

puts cart.print_receipt
