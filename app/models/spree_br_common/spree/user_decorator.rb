require 'cpf_cnpj'
require 'validates_timeliness'

module SpreeBrCommon::Spree::UserDecorator
  def self.prepended(base)
    base.validates_presence_of :phone
    base.validates :date_of_birth,
                   presence: true,
                   timeliness: {
                     on_or_before: lambda { 18.years.ago.at_end_of_day },
                     on_or_after: lambda { 100.years.ago.at_midnight },
                     type: :datetime
                   }
    base.validates :cpf, presence: true
    base.validates :first_name, :last_name, presence: true, length: { maximum: 100 }
    base.validates :phone, :alternative_phone, length: { maximum: 11 }
    base.validate :valid_cpf

    base.before_validation :sanitize_fields
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def cpf_formatted
    CPF::Formatter.format(cpf)
  end

  def phone_area_code
    phone[0..1] if phone
  end

  def phone_number
    phone[2..-1] if phone
  end

  private

  def sanitize(*fields)
    fields.each do |field|
      self[field] = self[field].to_s.gsub(/[^\d]/, '') if self.respond_to?(field)
    end
  end

  def sanitize_fields
    sanitize(:cpf, :phone, :alternative_phone)
  end

  def valid_cpf
    errors.add(:cpf, Spree.t(:invalid)) unless CPF.valid?(cpf)
  end
end

::Spree::User.prepend(SpreeBrCommon::Spree::UserDecorator)