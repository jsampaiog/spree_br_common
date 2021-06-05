module SpreeBrCommon
  module Spree
    module UserRegistrationsControllerDecorator
      include Spree::BaseHelperDecorator
      def self.prepended(base)
        base.before_action :parse_date_of_birth, :only => [:create, :update]
      end
      protected
      def parse_date_of_birth
        params[:spree_user][:date_of_birth] = DateTime.strptime(
          params[:spree_user][:date_of_birth],
          Spree.t('date_picker.format', default: '%Y/%m/%d')
        ) rescue ''
      end
    end
  end
end

Spree::UserRegistrationsController.prepend(SpreeBrCommon::Spree::UserRegistrationsControllerDecorator)