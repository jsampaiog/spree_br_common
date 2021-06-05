module SpreeBrCommon::Spree::StateDecorator
  def self.prepended(base)
    base.has_many :cities, -> { order('name ASC') }, dependent: :destroy
  end
end

::Spree::State.prepend(SpreeBrCommon::Spree::StateDecorator)