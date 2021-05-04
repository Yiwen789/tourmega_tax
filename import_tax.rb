require_relative 'constants'
module ImportTax
    class << self
      def tax_rate
        CONSTANTS::IMPORT_TAX_RATE
      end
      # def applies_to?(item)
      #   item.imported?
      # end

      def get_tax(item)
        product.price * tax_rate
      end
    end
  end

# include ImportTax

# print ImportTaxRule.tax_rate()
# print ImportTaxRule.tax_for("apple")
# print SALES_TAX_RATE
# module ImportTax
#   class
