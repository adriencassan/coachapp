class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  has_many :workouts
  has_many :results
end
