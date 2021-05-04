require_relative "constants"

module SaleTax
  class << self
      def tax_rate
        Constants::SALES_TAX_RATE
      end

      # def applies_to?(item)
      #   !item.tax_exempt?
      # end

      def get_tax(item)
        product.price * tax_rate
      end

    end
  end
