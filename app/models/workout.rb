class Workout < ApplicationRecord
  belongs_to :profile
  has_many :workoutsets
end
