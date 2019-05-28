class Customer < ApplicationRecord
  validates :first_name, :last_name, presence: true

  def contact
    Contact.new
  end

  def contact_attributes=(values)
    debugger
    self.errors.add(:base, 'email address')
  end
end
