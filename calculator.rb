require_relative "tax_type"

module Calculator
  extend self

    def calculate_tax(product)
      product.tax_type * product.price()
    end

    private

    def get_tax_type(product)
      if item.imported? && !item.exempted?
        TaxType::BOTH
      elsif item.imported? && item.exempted?
        TaxType::IMPORTED
      elsif !item.imported? && !item.exempted?
        TaxType::BASIC
      else
        TaxType::NA
      end
    end
end
