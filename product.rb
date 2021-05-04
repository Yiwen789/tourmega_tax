require_relative "constants"
require_relative "calculator"


class Product
  attr_accessor :name, :price, :quantity, :imported, :exempted
  def initialize(name, price, quantity)
    @name = name
    @price = price.to_f
    @quantity = quantity.to_i
  end

  def get_price_with_tax()
    round_tax(get_sales_tax() + self.price)
  end

  def get_sales_tax()
    @sales_tax||=Calculator.calculate_tax(self)
  end

  def sales_tax
		@sales_tax
	end

  # def imported？
  #   if product.name.inlcude?("imported")
  #     return true
  #   return false
  #   end
  # end
  def imported?
	 !!imported
	end

  def exempted?
   !!product.name.include?("book")||product.name.include?("food")||product.name.include?("pill")
  end

  # 
  # def exempted？
  #   if product.name.include?("book")||product.name.include?("food")||product.name.include?("pill")
  #     return true
  #   return false
  #   end
  # end

  def tax_type
		if imported && !exempted?
 	  	 TaxType::BOTH
 	  elsif imported? && exempted?
 	     TaxType::IMPORTED
 	  elsif imported? && exempted?
 	  	TaxType::BASIC
 	  else
 	  	TaxType::NA
 	  end
	end


  private

  def round_tax(tax)
    ((tax*100).round/100.0)
  end
end
