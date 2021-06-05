module SpreeBrCommon
  module Spree
    module Api
      module ApiHelpersDecorator
        mattr_reader :city_attributes

        @@city_attributes = [:id, :name, :ibge_code, :state_id]

        def self.prepended(base)
          base.ATTRIBUTES << :city_attributes
        end
      end
    end
  end
end

::Spree::Api::ApiHelpers.extend(SpreeBrCommon::Spree::Api::ApiHelpersDecorator)