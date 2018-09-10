class Profile < ApplicationRecord
  has_one :user
  belongs_to :profile
  has_many :workouts
  has_many :results

  def full_name
    "#{first_name} #{last_name}"
  end
end
