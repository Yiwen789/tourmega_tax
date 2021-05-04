require_relative "product"

class Cart
  attr_accessor :products, :total_price, :total_tax
    def initialize
      @products = Array.new
      @total_cost = 0.0
      @sales_tax = 0.0
    end

    def add(product)
      products << product
    end

    def print_receipt
      products.each do |product|
        @total_cost += product.get_price_with_tax()
        @sales_tax += product.get_sales_tax()
      end
      puts total_cost
      puts sales_tax
    end


end
