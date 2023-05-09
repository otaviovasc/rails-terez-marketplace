# frozen_string_literal: true
# app/decorators/my_app/spree/order_decorator.rb

module MyApp
  module Spree
    module OrderDecorator
      def self.prepended(base)
        base.remove_checkout_step :address
        base.remove_checkout_step :delivery
        # base.remove_checkout_step :payment
        # base.remove_checkout_step :confirm
        # base.insert_checkout_step :complete
        # base.insert_checkout_step :tos_agreement, {before: :confirm }
        # base.insert_checkout_step :delivery, { before: :payment, if: -> (order) { order.physical? } }
        # base.insert_checkout_step :address, { before: :delivery, if: -> (order) { order.physical? } }
      end

      # def physical?
      #   true
      # end

      ::Spree::Order.prepend self
    end
  end
end
