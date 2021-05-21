class Profile < ApplicationRecord
  has_one :user
  has_many :habitsets

  def full_name
    "#{first_name} #{last_name}"
  end
end
