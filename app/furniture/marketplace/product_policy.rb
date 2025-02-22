# frozen_string_literal: true

class Marketplace
  class ProductPolicy < Policy
    alias_method :product, :object
    def permitted_attributes(_params = nil)
      %i[name description price_cents price_currency price photo restore servings] + [tax_rate_ids: []]
    end

    def update?
      return false unless current_person.authenticated?
      return true if marketplace.vendor_representatives.exists?(person: current_person)

      super
    end

    alias_method :create?, :update?

    def show?
      true
    end

    class Scope < ApplicationScope
      def resolve
        scope.all
      end
    end
  end
end
