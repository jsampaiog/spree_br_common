module SpreeBrCommon::Spree::BaseHelper
    def datepicker_value(model, field)
      l(model[field], :format => Spree.t('date_picker.format', default: '%Y/%m/%d')) if model && model.respond_to?(field) && model[field]
    end
end

::Spree::BaseHelper.prepend(SpreeBrCommon::Spree::BaseHelper)