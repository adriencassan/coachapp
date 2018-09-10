class Profile < ApplicationRecord
  belongs_to :user
  has_many :workouts
  has_many :results
end
