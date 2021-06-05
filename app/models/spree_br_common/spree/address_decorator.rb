module SpreeBrCommon::Spree::AddressDecorator
  def self.prepended(base)
    base.belongs_to :city, class_name: 'Spree::City'

    base.validates :number, :numericality => {greater_than: 0}, :presence => true
    base.validates :district, length: { maximum: 150}, presence: true
  end
end

::Spree::Address.prepend(SpreeBrCommon::Spree::AddressDecorator)
